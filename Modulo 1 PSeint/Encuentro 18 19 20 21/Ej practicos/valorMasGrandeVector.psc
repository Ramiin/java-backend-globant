//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario. A continuación, se deberá crear una función que reciba el vector y devuelva el valor
//más grande del vector.

Algoritmo valorMasGrandeVector
	Definir numeros, N, i Como Entero
	
	Escribir "Ingrese el tamaño que desea para su vector:"
	Leer N
	Dimension numeros[N]
	
	Para i = 0 Hasta N-1 Hacer
		Escribir "Ingrese el elemento " i+1
		Leer numeros[i]
	FinPara
	
	Escribir "El valor máximo ingresado es:" valorMaximo(numeros, N)
	
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
