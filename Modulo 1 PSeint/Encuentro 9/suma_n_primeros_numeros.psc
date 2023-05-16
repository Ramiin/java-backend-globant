//Escribir un programa que calcule la suma de los N primeros números naturales. El valor
//de N se leerá por teclado.

Algoritmo suma_n_primeros_numeros
    Definir N, i, suma como Entero
    
    Escribir "Ingrese un número N para sumar los primeros N números naturales:"
    Leer N
    
    suma = 0
    
    Para i = 1 Hasta N Hacer
        suma = suma + i
    FinPara
    
    Escribir "La suma de los primeros ", N, " números naturales es: ", suma
    
FinAlgoritmo

