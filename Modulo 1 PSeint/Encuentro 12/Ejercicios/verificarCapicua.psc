Algoritmo verificarCapicua
    Definir numero, numInvertido, digito Como Entero
    Definir esCapicua Como Logico
       
    Escribir "Ingrese un n�mero:"
    Leer numero
    
    numInvertido = invertirNumero(numero)
    Escribir "Este es el num invertido:" numInvertido
    esCapicua = numero == numInvertido
    Si esCapicua Entonces
        Escribir "El n�mero ingresado SI ES un n�mero capic�a."
    Sino
        Escribir "El n�mero ingresado NO ES un n�mero capic�a."
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
