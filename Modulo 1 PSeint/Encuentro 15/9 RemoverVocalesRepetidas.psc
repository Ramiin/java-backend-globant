Algoritmo ejercicio9
	Definir frase Como Caracter
	Escribir "Ingrese una frase: "
	frase = "Habia una vez un barco"
	removerVocalesRepetidas(frase)
FinAlgoritmo

SubProceso removerVocalesRepetidas(frase)
	Definir contadorA, contadorE, contadorI, contadorO, contadorU Como Entero
	Definir i Como Entero
	Definir letra, fraseFinal Como Caracter
	
	fraseFinal = ""
	contadorA = 0
	contadorE = 0
	contadorI = 0
	contadorO = 0
	contadorU = 0
	
	Para i<-0 Hasta Longitud(frase) - 1 Hacer
		letra = Subcadena(frase, i, i)
		Segun Minusculas(letra) Hacer
			"a":
				contadorA = contadorA + 1
			"e":
				contadorE = contadorE + 1
			"i":
				contadorI = contadorI + 1
			"o":
				contadorO = contadorO + 1
			"u":
				contadorU = contadorU + 1
		Fin Segun
	FinPara
	
	Para i<-0 Hasta Longitud(frase) - 1 Hacer
		letra = Subcadena(frase, i, i)
		Segun Minusculas(letra) Hacer
			"a":
				Si contadorA <= 1 Entonces
					fraseFinal = fraseFinal + letra 
				FinSi
			"e":
				Si contadorE <= 1 Entonces
					fraseFinal = fraseFinal + letra 
				FinSi
			"i":
				Si contadorI <= 1 Entonces
					fraseFinal = fraseFinal + letra 
				FinSi
			"o":
				Si contadorO <= 1 Entonces
					fraseFinal = fraseFinal + letra 
				FinSi
			"u":
				Si contadorU <= 1 Entonces
					fraseFinal = fraseFinal + letra 
				FinSi
			De Otro Modo:
				fraseFinal = fraseFinal + letra 
		Fin Segun
	FinPara
	
	Escribir fraseFinal
	
FinSubProceso
	