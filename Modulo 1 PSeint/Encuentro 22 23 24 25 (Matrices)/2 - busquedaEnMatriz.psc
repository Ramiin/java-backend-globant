//Escribir un programa que realice la b�squeda lineal de un n�mero entero ingresado por el
//usuario en una matriz de 5x5, llena de n�meros aleatorios y devuelva por pantalla las
//coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
//caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.

Algoritmo busquedaEnMatriz
	
	Definir numeros, i, j, numBuscado, fila, columna Como Entero
	Definir encontrado Como Logico
	Dimension numeros[5,5]
	encontrado = Falso
	i= 0
	j = 0
	Para i=0 Hasta 4 Hacer
		Para j=0 Hasta 4 Hacer
			numeros[i, j] = Aleatorio(0, 100)
		FinPara	
	FinPara
	

	
	Hacer
		Escribir "Ingrese un n�mero a buscar (del 0 al 10)"
		Leer numBuscado
	Mientras Que  numBuscado < 0  O numBuscado > 10
	
	imprimirMatriz(numeros)
	buscarNum(numeros, numBuscado, encontrado, fila, columna )
	
	
	
	Si encontrado = Verdadero
		Escribir "El n�mero se encuentra en la posici�n: [" fila ", " columna "]"
	SiNo
		Escribir "El n�mero NO se ha encontrado. Intente nuevamente"
	FinSi

	
FinAlgoritmo

SubProceso buscarNum(matriz, numBuscado, encontrado Por Referencia, fila Por Referencia, columna Por Referencia )
	Definir i, j Como Entero
	i = 0
	j = 0
	Para i=0 Hasta 4 Hacer
		Para j=0 Hasta 4 Hacer
			Si matriz[i, j] == numBuscado
				encontrado = Verdadero
				fila = i
				columna = j
			FinSi
		FinPara	
	FinPara
FinSubProceso

SubProceso imprimirMatriz(matriz)
	Definir i, j como Entero
	
	Escribir "La matriz generada es:"
	
	Para i=0 Hasta 4 Hacer
		Para j=0 Hasta 4 Hacer
			Escribir Sin Saltar matriz[i,j] ", "
		FinPara
		Escribir ""
	FinPara	
FinSubProceso
