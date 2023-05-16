Algoritmo traspuestaMatrizAleatoria

		Definir n, m, i, j, matriz, traspuesta como Entero
		
		Escribir "Ingrese el valor de n:"
		Leer n
		Escribir "Ingrese el valor de m:"
		Leer m
		
		Dimension matriz[n,m], traspuesta[m,n]
		
		Para i = 0 Hasta n-1 Hacer
			Para j = 0 Hasta m-1 Hacer
				matriz[i,j] = Aleatorio(1, 100)
				traspuesta[j, i] = matriz[i,j]
			FinPara
		FinPara
		
		Escribir "Matriz original:"
		mostrarMatriz(matriz)
		
		Escribir "Matriz traspuesta:"
		mostrarMatriz(traspuesta)

FinAlgoritmo

Subproceso mostrarMatriz(matriz)
	Definir fila, columna como entero
	Para fila=0 Hasta 2 Hacer
		Para columna=0 Hasta 2 Hacer
			Escribir Sin Saltar  "[" matriz[fila,columna] "]"
		FinPara
		Escribir("")
	FinPara
FinSubproceso
