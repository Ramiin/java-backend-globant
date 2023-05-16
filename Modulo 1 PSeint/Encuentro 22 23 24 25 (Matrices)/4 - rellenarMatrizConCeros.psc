//Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro
//subproceso para imprimir la matriz.

Algoritmo RellenarMatrizConCeros
	
	Definir matriz Como Entero
	Definir n Como Entero
	
	Escribir "Ingrese la dimensión de la matriz cuadrada "
	Leer n	
	Dimension matriz[n,n]

	rellenarMatriz(matriz, n)
	imprimirMatriz(matriz, n)
	
FinAlgoritmo


Subproceso rellenarMatriz(matriz, n)
	Definir i, j Como Entero
	Para i = 0 Hasta n-1 Hacer
		Para j = 0 Hasta n-1 Hacer
			Si i = j Entonces
				matriz[i,j] = 0
			Sino
				matriz[i,j] = Aleatorio(1, 9)
			FinSi
		FinPara
	FinPara
FinSubproceso


Subproceso imprimirMatriz(matriz, n)
	Definir i, j Como Entero
	Escribir "La matriz es: "
	Para i = 0 Hasta n-1 Hacer
		Para j = 0 Hasta n-1 Hacer
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
FinSubproceso

