//Escribir un programa que lea un número entero y devuelva el número de dígitos que
//componen ese número. Por ejemplo, si introducimos el número 12345, el programa
//deberá devolver 5. Calcular la cantidad de dígitos matemáticamente utilizando el operador
//de división. Nota: recordar que las variables de tipo entero truncan los números o
//resultados.

Algoritmo contarDigitos
    Definir numero, contador Como real
    Escribir "Ingrese un número entero:"
    Leer numero
    contador = 0
    Mientras numero > 0 Hacer
        contador = contador + 1
        numero = trunc(numero / 10)
    Fin Mientras
    Escribir "El número tiene ", contador, " dígitos."
FinAlgoritmo

