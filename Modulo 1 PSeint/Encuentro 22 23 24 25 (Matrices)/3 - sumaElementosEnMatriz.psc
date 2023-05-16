//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//los resultados por pantalla.

Algoritmo sumaElementosEnMatriz
	Definir numeros, m, n, suma Como Entero
	
	
	Escribir "Ingrese la cardinalidad N (filas) de la matriz"
	Leer n
	Escribir "Ingrese la cardinalidad M (columnas) de la matriz"
	Leer m
	
	Dimension numeros[n, m]
	
	llenarConAleatorios(numeros, n, m)
	sumaElementosMatriz(numeros, n, m , suma)
	imprimirMatriz(numeros, n, m)
	
	Escribir "La suma de los números es: " suma
	
FinAlgoritmo

SubProceso llenarConAleatorios(matriz, n, m)
	Definir i, j Como Entero
	i= 0
	j = 0
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta m-1 Hacer
			matriz[i, j] = Aleatorio(0, 100)
		FinPara	
	FinPara
FinSubProceso

SubProceso sumaElementosMatriz(matriz, n, m, suma Por Referencia)
	suma = 0
	Definir i, j Como Entero
	i= 0
	j = 0
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta m-1 Hacer
			suma = suma + matriz[i, j]
		FinPara	
	FinPara
FinSubProceso

SubProceso imprimirMatriz(matriz, n, m)
	Definir i, j como Entero
	
	Escribir "La matriz generada es:"
	
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta m-1 Hacer
			Escribir Sin Saltar matriz[i,j] ", "
		FinPara
		Escribir ""
	FinPara	
FinSubProceso

