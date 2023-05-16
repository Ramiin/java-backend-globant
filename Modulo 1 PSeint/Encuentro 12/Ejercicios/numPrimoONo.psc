//Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
//primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
//3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.

Algoritmo numPrimoONo
	
	Definir num Como Entero
	Definir res Como Logico
	
	Escribir "Ingrese un numero para saber si es primo o no: "
	Leer num
	
	res = NumPrimo(num)
	
	Si res == Verdadero Entonces
		Escribir "El numero SI es primo"
	SiNo
		Escribir "El n?mero NO es primo"
	FinSi
	
FinAlgoritmo

Funcion retorno <- NumPrimo (a)
	
	Definir retorno Como Logico
	Definir i, contador Como Entero
	contador=0
	Para i=1 Hasta a Hacer
		si a%i == 0 Entonces
			contador=contador+1
		FinSi
	FinPara
	retorno = (contador==2)
	
FinFuncion
