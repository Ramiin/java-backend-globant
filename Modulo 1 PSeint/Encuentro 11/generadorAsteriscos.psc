//Realizar un programa que lea 5 n�meros (comprendidos entre 1 y 20) e imprima el n�mero
//ingresado seguido de tantos asteriscos como indique su valor. Por ejemplo:
//5 *****
//3 ***
//11 ***********
//2 **
//9 *********
Algoritmo generadorAsteriscos
	
	Definir num, i, j como Entero
	
	Para i = 1 Hasta 5 Con Paso 1
		Repetir
			Escribir "Ingrese un n�mero entre 1 y 20:"
			Leer num
		Mientras Que num<1 y num>20

		Si num < 1 o num > 20 Entonces
			Escribir "El n�mero ingresado no es v�lido."
		Sino
			Escribir Sin Saltar num " "
			Para j = 1 Hasta num Con Paso 1
				Escribir Sin Saltar "*"
			FinPara
			Escribir ""
		FinSi
	FinPara
FinAlgoritmo


