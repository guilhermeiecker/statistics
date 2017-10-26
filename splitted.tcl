set AREA {10000 9000}

foreach ASIDE $AREA {
	set NODES 40
	while {$NODES < 121} {
		puts stderr "./splitted.exe $ASIDE $NODES"
		exec ./splitted.exe $ASIDE $NODES >> results-splitted/$ASIDE.txt
		incr NODES
	}
}
