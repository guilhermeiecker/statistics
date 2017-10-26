set AREA {10000 9000}

foreach ASIDE $AREA {
		puts stderr "./link-splitted.exe $ASIDE"
		exec ./link-splitted.exe $ASIDE >> results-link-splitted/$ASIDE.txt
}
