//Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
//que el primer número múltiplo del segundo y devuelva verdadero si el primer número es
//múltiplo del segundo, sino es múltiplo que devuelva falso.

Algoritmo ValidarMultiplo
    Definir num1, num2 Como Entero
    Definir multiplo Como Logico
	
    Escribir "Ingrese el primer número: "
    Leer num1
    Escribir "Ingrese el segundo número: "
    Leer num2
	
    multiplo <- EsMultiplo(num1, num2)
	

    Si multiplo Entonces
        Escribir num1, " es múltiplo de ", num2
    SiNo
        Escribir num1, " no es múltiplo de ", num2
    FinSi
	
FinAlgoritmo


Funcion resultado <- EsMultiplo(num1, num2)
    Definir resultado Como Logico
    resultado <- num1 MOD num2 = 0 
FinFuncion
