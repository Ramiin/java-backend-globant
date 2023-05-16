Algoritmo verificarCapicua
    Definir numero, numInvertido, digito Como Entero
    Definir esCapicua Como Logico
       
    Escribir "Ingrese un número:"
    Leer numero
    
    numInvertido = invertirNumero(numero)
    Escribir "Este es el num invertido:" numInvertido
    esCapicua = numero == numInvertido
    Si esCapicua Entonces
        Escribir "El número ingresado SI ES un número capicúa."
    Sino
        Escribir "El número ingresado NO ES un número capicúa."
    FinSi
FinAlgoritmo

Funcion resultado <- invertirNumero(num)
    Definir numInvertido, resultado Como Entero
    numInvertido = 0
    
    Mientras num > 0 Hacer
        numInvertido = numInvertido * 10 + num%10
        num = trunc(num / 10)
    FinMientras
	resultado = numInvertido
FinFuncion
