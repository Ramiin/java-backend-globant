//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//usuario. A continuaci�n, se debe buscar un elemento dentro del arreglo (el n�mero a buscar
//tambi�n debe ser ingresado por el usuario). El programa debe indicar la posici�n donde se
//encuentra el valor. En caso que el n�mero se encuentre repetido dentro del arreglo se deben
//imprimir todas las posiciones donde se encuentra ese valor.
//Finalmente, en caso que el n�mero a buscar no est� adentro del arreglo se debe mostrar un
//mensaje.


Proceso BusquedaEnArreglo
    Definir N, i, valorBuscado, numeros Como Entero
    Definir posiciones como Cadena
	Definir posicionTexto Como Caracter
	posiciones = ""
	
    Escribir "Ingrese el tama�o del arreglo: "
    Leer N
	Dimension numeros[N]
	
    Para i = 0 Hasta N-1 Con Paso 1 Hacer
        Escribir "Ingrese el valor para la posici�n ", i+1, ": "
        Leer numeros[i]
    FinPara
	
    Escribir "Ingrese el valor a buscar: "
    Leer valorBuscado
	
    Para i = 0 Hasta N-1 Hacer
        Si numeros[i] = valorBuscado Entonces
			posicionTexto = ConvertirATexto(i+1)
            posiciones = Concatenar(Concatenar(posiciones, posicionTexto),"   ")
        FinSi
    FinPara
	
    Si posiciones <> "" Entonces
        Escribir "El valor ", valorBuscado, " se encuentra en las posiciones: ", posiciones
    Sino
        Escribir "El valor ", valorBuscado, " no se encuentra en el arreglo."
    FinSi
	
FinProceso
