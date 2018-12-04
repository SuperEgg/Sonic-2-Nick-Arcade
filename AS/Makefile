CXXFLAGS := -O2 -s -fno-ident -static -Wall -Wextra -pedantic -Wno-unused-but-set-variable -Wno-maybe-uninitialized

smpsp2bin.exe: smpsp2bin.cpp KENSKosComp/K-Compressor2.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^
