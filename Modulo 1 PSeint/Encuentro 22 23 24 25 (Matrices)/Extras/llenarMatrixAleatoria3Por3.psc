Algoritmo llenarMatrixAleatoria3Por3

	Definir matriz como Entero
	Dimension matriz[3, 3]
		Escribir "¡Hola!, iniciando el llenado de la matriz..."
		RellenarMatriz(matriz)
		
		Escribir "Matriz aleatoria generada, se muestra a continuación:"
		MostrarMatriz(matriz)

FinAlgoritmo

Subproceso RellenarMatriz(matriz)
	Definir fila, columna como entero
			Para fila=0 Hasta 2 Hacer
				Para columna=0 Hasta 2 Hacer
					matriz[fila,columna] <- Aleatorio(1, 100)
				FinPara
			FinPara
FinSubproceso

Subproceso MostrarMatriz(matriz)
	Definir fila, columna como entero
			Para fila=0 Hasta 2 Hacer
				Para columna=0 Hasta 2 Hacer
					Escribir Sin Saltar  "[" matriz[fila,columna] "]"
				FinPara
				Escribir("")
			FinPara
FinSubproceso