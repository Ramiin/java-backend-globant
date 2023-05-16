//Hacer un algoritmo para calcular la media de los n�meros pares e impares, s�lo se
//ingresar� diez n�meros.

Algoritmo media_pares_e_impares
	
	Definir numero, sumaPares, sumaImpares, contPares, contImpares, contador Como Entero
	Definir mediaImpares, mediaPares Como Real
	Definir opcion Como Caracter
	contador = 10
	sumaPares <- 0
	sumaImpares <- 0
	contPares <- 0
	contImpares <- 0
	
	Hacer
		Escribir "Ingrese un n�mero entero:"
		Leer numero
		
		Si numero Mod 2 = 0 Entonces
			sumaPares <- sumaPares + numero
			contPares <- contPares + 1
			contador = contador-1
		Sino
			sumaImpares <- sumaImpares + numero
			contImpares <- contImpares + 1
			contador = contador-1
		FinSi
		
		Si contador == 0 Entonces
			Escribir "Ha llegado al l�mite de n�meros ingresados (10)"
		SiNo
			Escribir "Desea ingresar otro n�mero? (s/n)"
			Leer opcion
			opcion = Minusculas(opcion)
		Fin Si

	Mientras Que opcion == "s" Y contador > 0
			
			Si contPares > 0 Entonces
				mediaPares <- sumaPares / contPares
				Escribir "La media de los n�meros pares es:", mediaPares
			Sino
				Escribir "No se ingresaron n�meros pares"
			FinSi
			
			Si contImpares > 0 Entonces
				mediaImpares <- sumaImpares / contImpares
				Escribir "La media de los n�meros impares es:", mediaImpares
			Sino
				Escribir "No se ingresaron n�meros impares"
			FinSi
			
FinAlgoritmo

