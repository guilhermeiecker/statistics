CPP      = g++
CARGS    = -m64 -g

all: general splitted objective link-general link-splitted link-objective

objective: objective.cpp
	$(CPP) $(CARGS) -std=c++11 objective.cpp -o objective.exe -lm

general: general.cpp
	$(CPP) $(CARGS) -std=c++11 general.cpp -o general.exe -lm

splitted: splitted.cpp
	$(CPP) $(CARGS) -std=c++11 splitted.cpp -o splitted.exe -lm

link-general: link-general.cpp
	$(CPP) $(CARGS) -std=c++11 link-general.cpp -o link-general.exe -lm

link-splitted: link-splitted.cpp
	$(CPP) $(CARGS) -std=c++11 link-splitted.cpp -o link-splitted.exe -lm

link-objective: link-objective.cpp
	$(CPP) $(CARGS) -std=c++11 link-objective.cpp -o link-objective.exe -lm

clean:
	rm general.exe
	rm splitted.exe
	rm objective.exe
	rm link-general.exe
	rm link-splitted.exe
	rm link-objective.exe

clean-all: clean
	rm results-general/*
	rm results-splitted/*
	rm results-objective/*
	rm results-link-general/*
	rm results-link-splitted/*
	rm results-link-objective/*
