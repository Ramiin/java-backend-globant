//Realizar una función que calcule la suma de dos números. En el algoritmo principal le
//pediremos al usuario los dos números para pasárselos a la función. Después la función
//calculará la suma y lo devolverá para imprimirlo en el algoritmo.
Algoritmo SumaDosNumeros
    Definir num1, num2, resultado Como Entero
	Escribir "Ingrese el primer número: "
	Leer num1
	Escribir "Ingrese el segundo número: "
	Leer num2

	resultado <- Sumar(num1, num2)
	
	Escribir "La suma de ", num1, " y ", num2, " es: ", resultado
	
FinAlgoritmo

Funcion suma <- Sumar(num1, num2) 
	Definir suma Como Entero
	suma <- num1 + num2
FinFuncion
