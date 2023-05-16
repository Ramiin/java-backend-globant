//Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
//decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
//de los siguientes valores: 2+4+6+8+10.
Algoritmo SumaNPrimerosPares
    Definir N, i, suma Como Entero
    Escribir "Ingrese el valor de N:"
    Leer N
    suma <- 0
    i <- 1
    Hacer 
		Si N > 0 Entonces
			suma <- suma + (i * 2)
			i <- i + 1
		Fin Si

	Mientras Que (i <= N)
			Escribir "La suma de los primeros ", N, " números pares es: ", suma
FinAlgoritmo

