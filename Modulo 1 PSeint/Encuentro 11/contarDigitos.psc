//Escribir un programa que lea un n�mero entero y devuelva el n�mero de d�gitos que
//componen ese n�mero. Por ejemplo, si introducimos el n�mero 12345, el programa
//deber� devolver 5. Calcular la cantidad de d�gitos matem�ticamente utilizando el operador
//de divisi�n. Nota: recordar que las variables de tipo entero truncan los n�meros o
//resultados.

Algoritmo contarDigitos
    Definir numero, contador Como real
    Escribir "Ingrese un n�mero entero:"
    Leer numero
    contador = 0
    Mientras numero > 0 Hacer
        contador = contador + 1
        numero = trunc(numero / 10)
    Fin Mientras
    Escribir "El n�mero tiene ", contador, " d�gitos."
FinAlgoritmo

