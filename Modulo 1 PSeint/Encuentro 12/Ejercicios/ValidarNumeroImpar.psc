//Realizar una función que valide si un número es impar o no. Si es impar la función debe
//devolver un verdadero, si no es impar debe devolver falso. Nota: la función no debe tener
//mensajes que digan si es par o no, eso debe pasar en el Algoritmo.
Algoritmo ValidarNumeroImpar
    Definir num Como Entero
    Definir impar Como Logico
	
    Escribir "Ingrese un número: "
    Leer num
	
    impar <- EsImpar(num)
	
    Si impar Entonces
        Escribir "El número ", num, " es impar."
    SiNo
        Escribir "El número ", num, " no es impar."
    FinSi
	
FinAlgoritmo

Funcion resultado <- EsImpar(num)
    Definir resultado Como Logico
    resultado <- num%2 <> 0 
FinFuncion
