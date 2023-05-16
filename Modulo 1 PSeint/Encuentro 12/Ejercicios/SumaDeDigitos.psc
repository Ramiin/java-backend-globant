//Realizar una funci�n que calcule la suma de los d�gitos de un n�mero.
//Ejemplo: 25 = 2 + 5 = 7
//Nota: Para obtener el �ltimo n�mero de un digito de 2 cifras o m�s debemos pensar en el
//resto de una divisi�n entre 10. Recordar el uso de la funci�n Mod y Trunc.



Algoritmo SumaDeDigitos
	Definir num, suma Como Entero
	Escribir "Ingresa un n�mero:"
	Leer num
	Escribir "La suma de los d�gitos es: " SumaDigitos(num)
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
