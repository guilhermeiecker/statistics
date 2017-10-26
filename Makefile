# Copyright 2016, Gurobi Optimization, Inc.

PLATFORM = linux64
INC      = /opt/gurobi702/linux64/include/
CC       = gcc
CPP      = g++
CARGS    = -m64 -g
CLIB     = -L/opt/gurobi702/linux64/lib/ -lgurobi70
CPPLIB   = -L/opt/gurobi702/linux64/lib/ -lgurobi_c++ -lgurobi70

general: general.cpp
	$(CPP) $(CARGS) -std=c++11 general.cpp -o general.exe -I$(INC) $(CPPLIB) -lm

clean:
	rm main.exe

clean-all:
	rm main
	rm results/*
	rm networks/*
