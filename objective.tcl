set AREA {10000 9000}

foreach ASIDE $AREA {
	set NODES 40
	while {$NODES < 121} {
		puts stderr "./objective.exe $ASIDE $NODES"
		exec ./objective.exe $ASIDE $NODES >> results-objective/$ASIDE.txt
		incr NODES
	}
}
