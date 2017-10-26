set AREA {10000 9000}

foreach ASIDE $AREA {
	set NODES 40
	while {$NODES < 121} {
		puts stderr "./link-general.exe $ASIDE $NODES"
		exec ./link-general.exe $ASIDE $NODES >> results-link-general/$ASIDE.txt
		incr NODES
	}
}
