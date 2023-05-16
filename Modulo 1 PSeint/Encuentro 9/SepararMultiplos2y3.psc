Algoritmo SepararMultiplos2y3
    Definir multiplos2, multiplos3, i como Entero
    multiplos2 = 0
	multiplos3 = 0
    Para i = 1 Hasta 100 Hacer
		Si i % 2 == 0 Y i % 3 == 0 Entonces
            multiplos2 = multiplos2 + 1
			multiplos3 = multiplos3 + 1
        FinSi
        Si i % 2 = 0 Y i % 3 <> 0 Entonces
            multiplos2 = multiplos2+1
        FinSi
        Si i % 3 == 0 Y i % 2 <> 0 Entonces
            multiplos3 = multiplos3+1
        FinSi
    FinPara
    
    Escribir "Multiplos de 2: ", multiplos2
    Escribir "Multiplos de 3: ", multiplos3
FinAlgoritmo

