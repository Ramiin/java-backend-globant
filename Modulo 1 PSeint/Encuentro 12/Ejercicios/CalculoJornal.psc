//Los empleados de una f�brica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
//jornal diario de acuerdo con las siguientes reglas:
//a) La tarifa de las horas diurnas es de $ 90
//b) La tarifa de las horas nocturnas es de $ 125
//c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
//un 15% si el turno es nocturno.

//El programa debe solicitar la siguiente informaci�n al usuario: el nombre del trabajador, el d�a
//de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Adem�s,
//debemos preguntarle al usuario si el d�a de la semana (lunes, martes, mi�rcoles, etc.) era
//festivo o no, para poder calcular el jornal diario. Utilice una funci�n para realizar el c�lculo.

Algoritmo CalculoJornal
    Definir nombre, diaSemana, turno, festivo Como Cadena
    Definir horasTrabajadas, tarifa, jornal Como Real
	Definir festivoBooleano Como Logico

	
    Escribir "Ingrese el nombre del trabajador: "
    Leer nombre
	
    Escribir "Ingrese el d�a de la semana: "
    Leer diaSemana
	
    Escribir "Ingrese el turno (diurno o nocturno): "
    Leer turno
	
    Escribir "Ingrese la cantidad de horas trabajadas: "
    Leer horasTrabajadas
	
    Escribir "�Es d�a festivo? (S�/No): "
    Leer festivo
    festivo = Minusculas(festivo)
	
	Segun festivo Hacer
		"si":
			festivoBooleano = Verdadero
		"no":
			festivoBooleano = Falso
		De Otro Modo:
			Escribir "Opcion inv�lida, se tomar� como d�a normal."
			festivoBooleano = Falso
	Fin Segun
	
    jornal <- calcularJornal(turno, festivoBooleano, horasTrabajadas)
	

    Escribir "El jornal diario de ", nombre, " es: $", jornal
	
FinAlgoritmo

Funcion resultado <- calcularJornal(turno, festivo, horasTrabajadas)
    Definir tarifa, incremento, resultado Como Real
	
    Si turno = "diurno" Entonces
        tarifa <- 90
    Sino
        tarifa <- 125
    FinSi
	
    Si festivo = Verdadero Entonces
        Si turno = "diurno" Entonces
            incremento <- 0.10
        Sino
            incremento <- 0.15
        FinSi
    Sino
        incremento <- 0
    FinSi
	
    // Calcular el jornal diario
   resultado = (tarifa * horasTrabajadas) + (tarifa * horasTrabajadas * incremento)
	
FinFuncion
