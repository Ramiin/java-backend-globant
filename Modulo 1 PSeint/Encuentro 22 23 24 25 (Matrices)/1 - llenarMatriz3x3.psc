//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.

Algoritmo llenarMatriz3x3
	Definir numeros, i, j Como Entero
	Dimension numeros[3,3]
	i = 0
	j= 0
	Para i=0 Hasta 2 Hacer
		Para j=0 Hasta 2 Hacer
			Escribir "Ingrese el valor [" i ", " j "]"
			Leer numeros[i,j]
		FinPara
	FinPara
	
	imprimirMatriz(numeros)
	
FinAlgoritmo

SubProceso imprimirMatriz(matriz)
	Definir i, j como Entero
	
	Escribir "La matriz generada es:"
	
	Para i=0 Hasta 2 Hacer
		Para j=0 Hasta 2 Hacer
			Escribir Sin Saltar matriz[i,j] ", "
		FinPara
		Escribir ""
	FinPara	
FinSubProceso
