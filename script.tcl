#! /usr/bin/tclsh
# vim: autoindent shiftwidth=2 softtabstop=2 tabstop=2 :


# ASIDE controla o numero de curvas
# NODES controla quantidade de pontos no eixo x [granularidade]
# NETID controla a quantidade de experimentos para cada ponto [intervalo de confianca] 

set AREA {10000 9000}

foreach ASIDE $AREA {
	set NODES 40
	while {$NODES < 121} {
		puts stderr "./main.exe $ASIDE $NODES"
		exec ./main.exe $ASIDE $NODES >> results/$ASIDE.txt
		incr NODES
	}
}
