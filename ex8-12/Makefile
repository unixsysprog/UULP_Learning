CXX = clang++
CXXFLAGS = -g3 -Wall -std=c++11 -l curses -lrt

target = psh2 psh2_aio psh2_final

all: $(target)


psh2: psh2.cc
	$(CXX) $^ $(CXXFLAGS) -o $@

psh2_aio: psh2_aio.cc
	$(CXX) $^ $(CXXFLAGS) -o $@

psh2_final: psh2_final.cc
	$(CXX) $^ $(CXXFLAGS) -o $@

clean:
	rm -rf *.dSYM $(target)
