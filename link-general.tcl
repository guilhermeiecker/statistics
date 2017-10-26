set AREA {10000 9000}

foreach ASIDE $AREA {
		puts stderr "./link-general.exe $ASIDE"
		exec ./link-general.exe $ASIDE >> results-link-general/$ASIDE.txt
}
