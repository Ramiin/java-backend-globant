//Realizar una funci�n que calcule la suma de dos n�meros. En el algoritmo principal le
//pediremos al usuario los dos n�meros para pas�rselos a la funci�n. Despu�s la funci�n
//calcular� la suma y lo devolver� para imprimirlo en el algoritmo.
Algoritmo SumaDosNumeros
    Definir num1, num2, resultado Como Entero
	Escribir "Ingrese el primer n�mero: "
	Leer num1
	Escribir "Ingrese el segundo n�mero: "
	Leer num2

	resultado <- Sumar(num1, num2)
	
	Escribir "La suma de ", num1, " y ", num2, " es: ", resultado
	
FinAlgoritmo

Funcion suma <- Sumar(num1, num2) 
	Definir suma Como Entero
	suma <- num1 + num2
FinFuncion
