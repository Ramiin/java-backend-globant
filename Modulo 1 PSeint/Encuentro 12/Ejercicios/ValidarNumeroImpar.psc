//Realizar una funci�n que valide si un n�mero es impar o no. Si es impar la funci�n debe
//devolver un verdadero, si no es impar debe devolver falso. Nota: la funci�n no debe tener
//mensajes que digan si es par o no, eso debe pasar en el Algoritmo.
Algoritmo ValidarNumeroImpar
    Definir num Como Entero
    Definir impar Como Logico
	
    Escribir "Ingrese un n�mero: "
    Leer num
	
    impar <- EsImpar(num)
	
    Si impar Entonces
        Escribir "El n�mero ", num, " es impar."
    SiNo
        Escribir "El n�mero ", num, " no es impar."
    FinSi
	
FinAlgoritmo

Funcion resultado <- EsImpar(num)
    Definir resultado Como Logico
    resultado <- num%2 <> 0 
FinFuncion
