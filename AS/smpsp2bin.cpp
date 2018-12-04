#include <libgen.h>
#include <stdio.h>
#include <string.h>

const char* codeFileName = NULL;
const char* romFileName = NULL;
const char* programName = NULL;

long KComp3(FILE *Src, FILE *Dst, int SlideWin, int RecLen, int srcStart, int srcLen, bool Moduled);

void printUsage() { printf("usage: %s inputcodefile.p outputromfile.bin\n", programName); }
bool buildRom(FILE* from, FILE* to);

int main(int argc, char *argv[])
{
	programName = basename( argv[0] );

	if (argc < 2)
	{
		printUsage();
		return 1;
	}

	argc--, argv++;	// skip the exe filename

	for (int i=0; i < argc; i++)
		if (!strcasecmp(argv[i], "-h") || !strcasecmp(argv[i], "--help"))
		{
			printUsage();
			return 1;
		}

	codeFileName = argv[0];
	romFileName = argv[1];

	printf("\n%s: generating %s from %s", programName, romFileName, codeFileName);
		
	FILE* from = fopen(codeFileName, "rb");
	if (from == NULL)
	{
		printf("\nERROR: Failed to load file \"%s\".", codeFileName);
		return 1;
	}

	FILE* to = fopen(romFileName, "wb");
	if (to == NULL)
	{
		printf("\nERROR: Failed to access file \"%s\".", romFileName);
		return 1;
	}

	bool built = buildRom(from, to);

	fclose(to);
	fclose(from);

	if (built == false)
	{
		remove(romFileName); // error; delete the ROM because it's probably hosed
		return 1;
	}

	printf(" ... done.");

	printf("\n%s: compressing %s", programName, romFileName);

	// This is hackish as FUCK
	FILE *file = fopen(romFileName, "rb");
	FILE *buffer = fopen("tmp", "wb");	// That's right, we're using a file as a buffer

	// Get size of file
	fseek(file, 0, SEEK_END);
	int filesize = ftell(file);
	fseek(file, 0, SEEK_SET);

	// Save uncompressed file to buffer
	char *filearray = new char[filesize];
	fread(filearray, 1, filesize, file);
	fwrite(filearray, 1, filesize, buffer);
	delete[] filearray;

	// Get ready to write back the compressed file
	freopen("tmp", "rb", buffer);
	freopen(romFileName, "wb", file);

	// Compress the file (Kosinski)
	KComp3(buffer, file, 8192, 256, 0, filesize, false);

	printf(" ... done.");

	printf("\n%s: padding %s", programName, romFileName);

	// Pad file to 0x10
	while (ftell(file) & 0x0F)
		fputc(0,file);

	fseek(file, 0, SEEK_END);
	filesize = ftell(file);

	// We're done with the files
	fclose(file);
	fclose(buffer);

	// Delete buffer file
	remove("tmp");

	printf(" ... done.");

	printf("\nCompressed driver size: %Xh bytes.", filesize);

	printf("\n");
	return 0;
}

bool buildRom(FILE* from, FILE* to)
{
	if (fgetc(from) != 0x89)
		printf("\nWarning: First byte of a .p file should be $89");
	if (fgetc(from) != 0x14)
		printf("\nWarning: Second byte of a .p file should be $14");

	int cpuType = 0, segmentType = 0, granularity = 0;
	signed long start = 0, lastStart = 0;
	unsigned short length = 0, lastLength = 0;
	long maxpos = 0;
	static const int scratchSize = 4096;
	unsigned char scratch [scratchSize];
	bool lastSegmentCompressed = false;

	while (true)
	{
		unsigned char headerByte = fgetc(from);
		if (ferror(from) || feof(from))
			break;

		switch (headerByte)
		{
			case 0x00: // "END" segment
				return true;
			case 0x80: // "entry point" segment
				fseek(from, 3, SEEK_CUR);
				continue;
			case 0x81:  // code or data segment
				cpuType = fgetc(from);
				segmentType = fgetc(from);
				granularity = fgetc(from);
				if (granularity != 1)
				{
					printf("\nERROR: Unsupported granularity %d.", granularity);
					return false;
				}
				break;
			default:
				if (headerByte > 0x81)
				{
					printf("\nERROR: Unsupported segment header $%02X", headerByte);
					return false;
				}
				cpuType = headerByte;
				break;
		}

		start = fgetc(from); // integers in AS .p files are always little endian
		start |= fgetc(from) << 8;
		start |= fgetc(from) << 16;
		start |= fgetc(from) << 24;
		length = fgetc(from);
		length |= fgetc(from) << 8;

		if (length == 0)
		{
			// error instead of warning because I had quite a bad freeze the one time I saw this warning go off
			printf("\nERROR: zero length segment ($%X).", length);
			return false;
		}

		if (start < 0)
		{
			printf("\nERROR: negative start address ($%lX).", start), start = 0;
			return false;
		}

		if (cpuType == 0x51 && start != 0 && lastSegmentCompressed)
		{
			printf("\nERROR: The compressed Z80 code (smps.asm) must all be in one segment. That means no ORG/ALIGN/CNOP/EVEN or memory reservation commands in the Z80 code and the size must be < 65535 bytes. The offending new segment starts at address $%lX relative to the start of the Z80 code.", start);
			return false;
		}

		long cur = ftell(to);

		if(start+3 < cur) // 3 bytes of leeway for instruction patching
			printf("\nWarning: overlapping allocation detected! $%lX < $%lX", start, ftell(to));

//		printf("copying $%X-$%X -> $%X-$%X\n", ftell(from), ftell(from)+length, start, start+length);
		while(length)
		{
			int copy = length;
			if(copy > scratchSize)
				copy = scratchSize;
			fread(scratch, copy, 1, from);
			fwrite(scratch, copy, 1, to);
			length -= copy;
		}

		cur = ftell(to);
		if (cur > maxpos)
			maxpos = cur;

		lastStart = start;
		lastLength = length;
		lastSegmentCompressed = false;
	}

	return true;
}
