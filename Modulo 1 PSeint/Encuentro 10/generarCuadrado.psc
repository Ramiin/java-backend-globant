//Realizar un programa que lea un número entero (tamaño del lado) y a partir de él cree
//un cuadrado de asteriscos de ese tamaño. Los asteriscos sólo se verán en el borde del
//cuadrado, no en el interior. Por ejemplo, si se ingresa el número 4 se debe mostrar:
//* * * *
//*     *
//*     *
//* * * *
//Nota: Recordar el uso del escribir sin saltar en PseInt.


Algoritmo generarCuadrado
	Definir lado, i , j Como Entero
	Escribir "Ingrese el tamaño del lado del cuadrado: "
	Leer lado
	Para i = 1 hasta lado hacer
		Para j = 1 hasta lado hacer
			Si i = 1 O i = lado O j = 1 O j = lado Entonces
				Escribir sin saltar "* "
			Sino
				Escribir sin saltar "  "
			FinSi
		FinPara
		Escribir ""  // Salto de línea
	FinPara
FinAlgoritmo
