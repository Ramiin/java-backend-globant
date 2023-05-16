//Realizar una función que calcule y retorne la suma de todos los divisores del número n
//distintos de n. El valor de n debe ser ingresado por el usuario.

Algoritmo SumaDivisores
    Definir n, suma Como Entero
	
    Escribir "Ingrese un número: "
    Leer n
	
    suma <- SumarDivisores(n)
	
    Escribir "La suma de los divisores de ", n, " (excluyendo a ", n, ") es: ", suma
	
FinAlgoritmo

Funcion suma <- SumarDivisores(numero)
    Definir divisor, suma Como Entero
    suma <- 0
	
    Para divisor <- 1 Hasta numero - 1 Hacer
        Si numero MOD divisor = 0 Entonces
            suma <- suma + divisor
        FinSi
    FinPara
FinFuncion
