//Escribir un programa que calcule la suma de los N primeros n�meros naturales. El valor
//de N se leer� por teclado.

Algoritmo suma_n_primeros_numeros
    Definir N, i, suma como Entero
    
    Escribir "Ingrese un n�mero N para sumar los primeros N n�meros naturales:"
    Leer N
    
    suma = 0
    
    Para i = 1 Hasta N Hacer
        suma = suma + i
    FinPara
    
    Escribir "La suma de los primeros ", N, " n�meros naturales es: ", suma
    
FinAlgoritmo

