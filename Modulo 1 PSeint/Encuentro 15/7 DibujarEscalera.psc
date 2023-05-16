//Crear un programa que dibuje una escalera de n�meros, donde cada l�nea de n�meros
//comience en uno y termine en el n�mero de la l�nea. Solicitar la altura de la escalera al usuario
//al comenzar. Ejemplo: si se ingresa el n�mero 3:
//1
//12
//123
Algoritmo DibujarEscalera
    Definir altura, i Como Entero
	
    Escribir "Ingrese la altura de la escalera:"
    Leer altura
	
    Para i = 1 Hasta altura Hacer
        DibujarFila(i)
    FinPara
	
FinAlgoritmo

SubProceso DibujarFila(numero)
	Definir i Como Entero
	Para i = 1 Hasta numero Hacer
		Escribir Sin Saltar i
	FinPara
	Escribir ""
FinSubProceso

