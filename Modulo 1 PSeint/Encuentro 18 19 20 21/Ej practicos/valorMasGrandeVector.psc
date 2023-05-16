//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//usuario. A continuaci�n, se deber� crear una funci�n que reciba el vector y devuelva el valor
//m�s grande del vector.

Algoritmo valorMasGrandeVector
	Definir numeros, N, i Como Entero
	
	Escribir "Ingrese el tama�o que desea para su vector:"
	Leer N
	Dimension numeros[N]
	
	Para i = 0 Hasta N-1 Hacer
		Escribir "Ingrese el elemento " i+1
		Leer numeros[i]
	FinPara
	
	Escribir "El valor m�ximo ingresado es:" valorMaximo(numeros, N)
	
FinAlgoritmo

Funcion resultado <- valorMaximo ( vector, N )
	Definir resultado, i Como Entero
	resultado = vector[0]
	
	Para i = 0 Hasta N-1 Hacer
		Si resultado < vector[i]
			resultado = vector[i]
		FinSi
	FinPara
	
Fin Funcion
