//Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario, validando
//que el primer n�mero m�ltiplo del segundo y devuelva verdadero si el primer n�mero es
//m�ltiplo del segundo, sino es m�ltiplo que devuelva falso.

Algoritmo ValidarMultiplo
    Definir num1, num2 Como Entero
    Definir multiplo Como Logico
	
    Escribir "Ingrese el primer n�mero: "
    Leer num1
    Escribir "Ingrese el segundo n�mero: "
    Leer num2
	
    multiplo <- EsMultiplo(num1, num2)
	

    Si multiplo Entonces
        Escribir num1, " es m�ltiplo de ", num2
    SiNo
        Escribir num1, " no es m�ltiplo de ", num2
    FinSi
	
FinAlgoritmo


Funcion resultado <- EsMultiplo(num1, num2)
    Definir resultado Como Logico
    resultado <- num1 MOD num2 = 0 
FinFuncion
