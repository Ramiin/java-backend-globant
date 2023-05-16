

Algoritmo menuLlenarVectoresAleatorio
	Definir longitudVectores, A, B, C, valor Como Entero
	Definir opcionPrincipal, opcionVector Como Caracter
	Definir llenoA, llenoB, llenoC Como Logico
	
	llenoA = Falso
	llenoB = Falso
	llenoC = Falso
	
	Escribir "Escribe la longitud para todos los vectores:"
	Leer longitudVectores
	Dimension A[longitudVectores]
	Dimension B[longitudVectores]
	Dimension C[longitudVectores]
	
	Hacer
		Escribir "¿Qué desea hacer? Selecciona una acción:"
		Escribir "A - Llenar Vector A."
		Escribir "B - Llenar Vector B."
		Escribir "C - Llenar Vector C con la suma de los vectores A y B."
		Escribir "D - Llenar Vector C con la resta de los vectores B y A."
		Escribir "E - Mostrar un vector."
		Escribir "F - SALIR"
		
		Leer opcionPrincipal
		opcionPrincipal = Minusculas(opcionPrincipal)
		
		Segun opcionPrincipal Hacer
			"a":
				llenarVector(A, longitudVectores, llenoA)
				Escribir "--------> Vector A llenado con éxito." 
			"b":
				llenarVector(B, longitudVectores, llenoB)
				Escribir "--------> Vector B llenado con éxito." 
			"c":
				llenarVectorOperacion(A, B, C, "suma", longitudVectores, llenoA, llenoB)
				Escribir "--------> Vector C llenado con éxito (A+B)" 
			"d":
				llenarVectorOperacion(A, B, C, "resta", longitudVectores,llenoA, llenoB)
				Escribir "-------->Vector C llenado con éxito (B-A)" 
			"e":
				Escribir("¿Qué vector desea mostrar?")
				Escribir("1. Vector A")
				Escribir("2. Vector B")
				Escribir("3. Vector C")
				Leer opcionVector
				Segun opcionVector Hacer
					"1": mostrarVector(A, longitudVectores)
					"2": mostrarVector(B, longitudVectores)
					"3": mostrarVector(C, longitudVectores)
				FinSegun
			"f":
				Escribir "¡Hasta pronto!"
			De Otro Modo:
				Escribir "Opción inválida."
		Fin Segun
		
	Mientras Que opcionPrincipal<>"f"
	
	
	
FinAlgoritmo

SubProceso llenarVector(vector, longitudVectores, flag Por Referencia)
	Definir i Como Entero
	Para i=0 Hasta longitudVectores-1 Hacer
		vector[i] = Aleatorio(-100, 100)
	Fin Para
	flag = Verdadero
FinSubProceso


SubProceso llenarVectorOperacion(A, B, C, operacion, longitudVectores, llenoA Por Referencia, llenoB Por Referencia)
	Si NO(llenoA) O NO(llenoB) Entonces
		Escribir "--------> Necesita llenar los vectores A y B antes."
	SiNo
		Definir i Como Entero
		Si operacion=="suma" Entonces
			Para i=0 Hasta longitudVectores-1 Hacer
				C[i] = A[i] + B[i]
			Fin Para
		FinSi
		Si operacion=="resta" Entonces
			Para i=0 Hasta longitudVectores-1 Hacer
				C[i] = B[i] - A[i]
			Fin Para
		Fin Si
	Fin Si
	
	
FinSubProceso

SubProceso mostrarVector(vector, longitudVectores)
	Definir i Como Entero
	Escribir Sin Saltar("[ ")
	Para i<-0 Hasta longitudVectores-1 Hacer
		Escribir Sin Saltar(vector[i])
		Escribir Sin Saltar(" ")
	FinPara
	Escribir Sin Saltar("]")
FinSubProceso



