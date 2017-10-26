set AREA {10000 9000}

foreach ASIDE $AREA {
	set NODES 40
	while {$NODES < 121} {
		puts stderr "./general.exe $ASIDE $NODES"
		exec ./general.exe $ASIDE $NODES >> results-general/$ASIDE.txt
		incr NODES
	}
}
