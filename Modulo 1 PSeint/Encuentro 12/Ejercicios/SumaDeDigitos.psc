//Realizar una función que calcule la suma de los dígitos de un número.
//Ejemplo: 25 = 2 + 5 = 7
//Nota: Para obtener el último número de un digito de 2 cifras o más debemos pensar en el
//resto de una división entre 10. Recordar el uso de la función Mod y Trunc.



Algoritmo SumaDeDigitos
	Definir num, suma Como Entero
	Escribir "Ingresa un número:"
	Leer num
	Escribir "La suma de los dígitos es: " SumaDigitos(num)
FinAlgoritmo


Funcion resultado <- SumaDigitos(numero)
    Definir suma, digito, resultado Como Entero
	
    resultado <- 0
	
    Mientras numero > 0 Hacer
        digito <- numero%10
        resultado <- resultado + digito
        numero <- Trunc(numero / 10)
    FinMientras
FinFuncion
