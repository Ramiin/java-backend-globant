//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
//tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
//Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
//realizar el ejercicio.

Algoritmo verificarDigitosImpares
	Definir numUser Como Entero
	Escribir "Ingrese un número."
	Leer numUser
	Si tieneDigitosImpares(numUser) Entonces
		Escribir "El número ingresado SI TIENE todos sus dígitos impares."
	SiNo
		Escribir "El número NO TIENE todos sus dígitos impares."
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
