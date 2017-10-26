CPP      = g++
CARGS    = -m64 -g

all: general splitted

general: general.cpp
	$(CPP) $(CARGS) -std=c++11 general.cpp -o general.exe -lm

splitted: splitted.cpp
	$(CPP) $(CARGS) -std=c++11 splitted.cpp -o splitted.exe -lm

clean:
	rm general.exe
	rm splitted.exe

clean-all:
	rm main
	rm results/*
