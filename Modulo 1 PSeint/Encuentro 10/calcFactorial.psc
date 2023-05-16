//La función factorial se aplica a números enteros positivos. El factorial de un número
//entero positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
//n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
//Escriba un programa que calcule las factoriales de todos los números enteros desde el 1
//hasta el 5. El programa deberá mostrar la siguiente salida:
//!1 = 1
//!2 = 1*2 = 2
//...
//!5 = 1*2*3*4*5 = 120

Algoritmo calcFactorial
	Definir factorial, factUser, i, j Como Entero
	
	Escribir "Ingresa el factorial a calcular:"
	Leer factUser
	
	Para i = 1 Hasta factUser Hacer
		factorial = 1
		Escribir "!" i "="
		Para j = 1 Hasta i Con Paso 1 Hacer
			factorial = factorial * j
			Si j < i Entonces
				Escribir Sin Saltar j "*"
			SiNo
				Escribir Sin Saltar j " = " factorial
			FinSi
		FinPara
	FinPara
	
FinAlgoritmo
