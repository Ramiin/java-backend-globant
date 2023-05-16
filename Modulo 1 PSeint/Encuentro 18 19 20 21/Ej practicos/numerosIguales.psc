//Crear un subproceso que rellene dos arreglos de tama�o n, con n�meros aleatorios. Despu�s,
//	hacer una funci�n que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
//			funci�n debe devolver el resultado de est� validaci�n, para mostrar el mensaje en el
//			algoritmo. Nota: recordar el uso de las variables de tipo l�gico.

Proceso numerosIguales
    Definir n, i como Entero
    Definir arreglo1, arreglo2 como Entero
    Definir todos_iguales como Logico
	
    Escribir "Ingrese el tama�o de los arreglos: "
    Leer n
	Dimension arreglo1[n], arreglo2[n]
	
    // Rellenar los arreglos con n�meros aleatorios
	RellenarArregloAleatorio(arreglo1, n)
	RellenarArregloAleatorio(arreglo2, n)
	//	arreglo1[0] = 1
	//	arreglo2[0] = 1
	
    // Verificar si los arreglos tienen todos los mismos elementos
    todos_iguales = TodosIguales(arreglo1, arreglo2, n)
	
    // Mostrar el resultado
    Si todos_iguales Entonces
        Escribir "Todos los elementos de los arreglos son iguales"
    SiNo
        Escribir "Los arreglos tienen elementos diferentes"
    FinSi
FinProceso

Subproceso RellenarArregloAleatorio(arreglo, n)
	Definir i como Entero
	Para i = 0 Hasta n-1 Hacer
		arreglo[i] = Aleatorio(-100, 100)
	FinPara
FinSubproceso

Funcion resultado <- TodosIguales(arreglo1, arreglo2, n) 
	Definir i como Entero
	Definir resultado Como Logico
	resultado = Verdadero
	
	Para i = 0 Hasta n-1 Hacer
		Si arreglo1[i] <> arreglo2[i] Entonces
			resultado = Falso
		FinSi
	FinPara
FinFuncion
