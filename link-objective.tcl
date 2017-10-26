set AREA {10000 9000}

foreach ASIDE $AREA {
		puts stderr "./link-objective.exe $ASIDE"
		exec ./link-objective.exe $ASIDE >> results-link-objective/$ASIDE.txt
}
