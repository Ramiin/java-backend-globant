//Realizar un programa que lea un n�mero entero (tama�o del lado) y a partir de �l cree
//un cuadrado de asteriscos de ese tama�o. Los asteriscos s�lo se ver�n en el borde del
//cuadrado, no en el interior. Por ejemplo, si se ingresa el n�mero 4 se debe mostrar:
//* * * *
//*     *
//*     *
//* * * *
//Nota: Recordar el uso del escribir sin saltar en PseInt.


Algoritmo generarCuadrado
	Definir lado, i , j Como Entero
	Escribir "Ingrese el tama�o del lado del cuadrado: "
	Leer lado
	Para i = 1 hasta lado hacer
		Para j = 1 hasta lado hacer
			Si i = 1 O i = lado O j = 1 O j = lado Entonces
				Escribir sin saltar "* "
			Sino
				Escribir sin saltar "  "
			FinSi
		FinPara
		Escribir ""  // Salto de l�nea
	FinPara
FinAlgoritmo
