//Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero
//tiene todos sus d�gitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//numero en partes (si es un numero de m�s de un digito) y ver si cada n�mero es par o impar.
//Nota: recordar el uso de la funci�n Mod y Trunc(). No podemos pasar el numero a cadena para
//realizar el ejercicio.

Algoritmo verificarDigitosImpares
	Definir numUser Como Entero
	Escribir "Ingrese un n�mero."
	Leer numUser
	Si tieneDigitosImpares(numUser) Entonces
		Escribir "El n�mero ingresado SI TIENE todos sus d�gitos impares."
	SiNo
		Escribir "El n�mero NO TIENE todos sus d�gitos impares."
	Fin Si
FinAlgoritmo

Funcion resultado <- tieneDigitosImpares(numero)
	Definir digito Como Entero
	Definir resultado Como Logico
	resultado <- Verdadero
	
	Mientras numero > 0 Hacer
		digito <- numero%10
		Si digito%2 == 0 Entonces
			resultado <- Falso
			numero = -1
		FinSi
		numero <- Trunc(numero / 10)
	FinMientras
	

	
FinFuncion
