Algoritmo desafio4
	menu()
FinAlgoritmo

Funcion menu()
	Definir seleccionar Como Entero
	
	Hacer
		Escribir "Selecciona una opcion"
		Escribir "1. Calcular muro de ladrillo"
		Escribir "2. Calcular viga de hormigón"
		Escribir "3. Calcular columnas de hormigón"
		Escribir "4. Calcular contrapisos"
		Escribir "5. Calcular techo"
		Escribir "6. Calcular pisos"
		Escribir "7. Calcular pintura"
		Escribir "8. Calcular iluminación"
		Escribir "9. Salir"
		Leer seleccionar
		
		Segun seleccionar Hacer
			1: calcularMuro()
			2: calcularViga()
			3: calcularColumna()
			4: calcularContrapisos()
			5: calcularTecho()
			6: calcularPisos()
			7: calcularPintura()
			8: calcularIluminacion()
			9: Escribir "Salir"
			De Otro Modo: Escribir "Opcion no valida"
		Fin Segun
	Mientras Que seleccionar <> 9
	
	Escribir "Programa terminado"
FinFuncion

Funcion superficie = calcularSuperficie(ancho, largo)
	Definir superficie Como Real
	superficie = ancho * largo
FinFuncion


Funcion volumen = calcularVolumen(ancho, largo, altura)
	Definir volumen Como Real
	volumen = ancho * largo * altura
FinFuncion

Funcion calcularMuro() //1
	Definir espesor Como Entero
	Definir largo, alto, cementoxmetro, arenaxmetro, ladrillosxmetro, superficie Como Real
	espesor = 0
	Repetir
		Si espesor == 0 Entonces
			Escribir "¿El muro será de 20CM o 30CM de espesor? (Escribir solo número 20 o 30)"
			Leer espesor
		SiNo
			Escribir "Escribió un número inválido, intente de nuevo."
			Leer espesor
		FinSi
		
	Mientras Que espesor<>20 Y espesor<>30
	
	largo = 0
	alto = 0
	
	Repetir
		Escribir "Ingrese el largo del muro en metros:"
		Leer largo
		Si largo < 1
			Escribir "No se admiten valores negativos o cero."
		FinSi
	Mientras Que largo < 1
	
	Repetir
		Escribir "Ingrese el alto del muro en metros:"
		Leer alto
		Si alto < 1
			Escribir "No se admiten valores negativos o cero."
		FinSi
	Mientras Que alto < 1
	
	Segun espesor Hacer
		30:
			cementoxmetro = 15.2
			arenaxmetro = 0.115
			ladrillosxmetro = 120
		20:
			cementoxmetro = 10.9
			arenaxmetro = 0.09
			ladrillosxmetro = 90
	Fin Segun
	
	//Esto se puede reemplazar por la funcion calcular superficie, mientras la pongo yo
	superficie = calcularSuperficie(largo, alto)
	Escribir "La superficie del muro es: " superficie " m2"
	calcularMaterialMuro(superficie, cementoxmetro, arenaxmetro, ladrillosxmetro)
FinFuncion

Subproceso calcularMaterialMuro ( superficie, cemento, arena, ladrillo )
	Definir totalCemento, totalArena, totalLadrillo Como Real
	totalCemento = superficie * cemento
	totalArena = superficie * arena
	totalLadrillo = superficie * ladrillo
	
	Escribir "En total se ocuparán:" 
	Escribir totalCemento "KG de cemento"
	Escribir totalArena "m3 de arena"
	Escribir totalLadrillo " ladrillos"
Fin Funcion

Funcion calcularViga() //2
	Definir m Como Entero
	
	Escribir "Ingrese el largo en metros de la viga: "
	Leer m
	
	vigas(m)
FinFuncion

SubProceso vigas(largo)
	Definir cemento, arena, piedra, hierro8, hierro4, x Como Real
	Mientras largo < 1 Hacer
		Escribir "Ingrese una medida válida para el largo: "
		Leer largo
	FinMientras
	
	cemento = 1
	arena = 1
	piedra = 1
	hierro4 = 1
	hierro8 = 1
	
	x = largo
	x = x / x
	
	cemento = x * 9
	arena = x / 50
	piedra = x / 50
	hierro4 = x * 3
	hierro8 = x * 4
	
	Escribir "Para la construcción de esta viga necesitarás: ", cemento * largo, "kg de cemento, ", arena * largo, "m3 de arena, ", piedra * largo, "m3 de piedra, ", hierro4 * largo, "m de hierro #4, y ", hierro8 * largo, "m de hierro #8"
FinSubProceso

Funcion calcularColumna() //3
	Definir largocolumna, cemento, arena, piedra, hierro10, hierro4 Como Real //Para definir las variables a usar
	
	Escribir "¿Cuál es el largo de la columna en metro lineal?: " //se solicita el largo de la columna en mt lineal que se desea construir
	Leer largocolumna //se almacena el resultado
	
	Mientras largocolumna <= 0 Hacer
		Escribir "Ingresa un nro mayor a 0"
		Leer largocolumna
	FinMientras
	//Se define el valor constante de los materiales
	cemento = 7.5
	arena = 0.016
	piedra = 0.016
	hierro10 = 6
	hierro4 = 4
	
	Escribir "La cantidad de materiales de construcción que necesitas para la columna de ",largocolumna," mt son: "
	cemento = cemento * largocolumna
	arena = arena * largocolumna
	piedra = piedra * largocolumna
	hierro10 = hierro10 * largocolumna
	hierro4 = hierro4 * largocolumna
	
	//Resultado por material
	Escribir "Cemento: ", cemento, " kg"
	
	Escribir "Arena: ", arena, " m3"
	
	Escribir "Piedra: ", piedra, " m3"
	
	Escribir "hierro de 10: ", hierro10, " m"
	
	Escribir "hierro de 4: ", hierro4, " m"
FinFuncion

Funcion calcularContrapisos() //4
	definir espesor,ancho,largo Como Real
	espesor=0
	ancho=0
	largo=0
	calcularContrapiso(espesor,ancho,largo)
FinFuncion

SubProceso calcularContrapiso(espesor,ancho,largo)
	definir cemento,piedra,arena, volumen Como Real
	escribir " Ingrese el espesor: " 
	leer espesor
	escribir "Ingrese el ancho: "
	leer ancho
	escribir "Ingrese el alto"
	leer largo
	
	si espesor =1 Entonces
		cemento=105
		arena= 0.45
		piedra= 0.9
	SiNo
		cemento= 105*espesor
		arena= 0.45*espesor
		piedra= 0.9*espesor
	FinSi
	
	si ancho =1 Entonces
		cemento=105
		arena= 0.45
		piedra= 0.9
	SiNo
		cemento= 105*ancho
		arena= 0.45*ancho
		piedra= 0.9*ancho
		
	FinSi
	
	si largo =1 Entonces
		cemento=105
		arena= 0.45
		piedra= 0.9
	SiNo
		cemento= 105*largo
		arena= 0.45*largo
		piedra= 0.9*largo
	FinSi
	
	volumen = espesor * ancho * largo
	cemento= 105*volumen
	arena= 0.45*volumen
	piedra= 0.9*volumen
	
	escribir "Por metro de contrapiso se necesitan ",cemento, "KG de cemento ", arena, "M3 de arena ", "asi como ",piedra , " M3 de piedra"
FinSubProceso

Funcion calcularTecho() //5
	Definir largo, ancho, espeso Como Real
	Escribir "Ingrese las medidas del muro de la siguiente forma: "
	Escribir "acho"
	Escribir "largo"
	Escribir "espeso"
	Leer ancho, largo, espeso
	techos(largo, ancho, espeso)
FinFuncion

SubProceso techos(l, a, e)
	Definir cemento, arena, piedra, hierro8, hierro6, x, m2 Como Real
	
	Mientras l < 1  Hacer
		
		Escribir "Ingrese una medida válida de largo"
		Leer l
		
	FinMientras
	
	Mientras a < 1 Hacer
		
		Escribir "Ingrese una medida válida de ancho"
		Leer a
		
	FinMientras
	
	cemento = 1
	arena = 1
	piedra = 1
	hierro6 = 1
	hierro8 = 1
	
	m2 = l * a
	
	x = m2 / m2
	
	cemento = x * 33
	arena = x / 14
	piedra = x / 14
	hierro6 = x * 4
	hierro8 = x * 7
	
	Escribir "Para la construcción de este techo necesitarás: ", cemento * m2, "kg de cemento, ", arena * m2, "m3 de arena, ", piedra * m2, "m3 de piedra, ", hierro6 * m2, "m de hierro #6, y ", hierro8 * m2, "m de hierro #8"
	
FinSubProceso

Funcion calcularPisos() //6
	Definir superficie, superficieConRecortes, ancho, largo Como Real
	Repetir
		Escribir "Ingrese el ancho del área a colocar piso:"
		Leer ancho
		Si ancho < 1
			Escribir "No se admiten valores negativos o cero."
		FinSi
	Mientras Que ancho < 1
	Repetir
		Escribir "Ingrese el largo del aréa a colocar piso:"
		leer largo
		Si largo < 1
			Escribir "No se admiten valores negativos o cero."
		FinSi
	Mientras Que largo < 1
	superficie = calcularSuperficie(ancho, largo)
	superficieConRecortes = superficie * 1.10
	Escribir "Para una superficie de: " superficie "M2 se necesita un total de " superficieConRecortes "M2 contemplando recortes." 
FinFuncion

Funcion calcularPintura() //7
	Definir ancho, altura, superficie Como Real
	
	Hacer
		Escribir "Dime el ancho del muro"
		Leer ancho
		Si ancho <= 0
			Escribir "Ancho debe ser mayor que 0"
		FinSi
	Mientras Que ancho <= 0
	
	Hacer
		Escribir "Dime la altura del muro"
		Leer altura
		Si altura <= 0
			Escribir "Altura debe ser mayor que 0"
		FinSi
	Mientras Que altura <= 0
	
	superficie = calcularSuperficie(ancho, altura)
	Escribir "Se necesitan " superficie/6.0 " litros de pintura"
	Leer ancho //pausa
	//Escribir "calcularPintura"
FinFuncion

Funcion calcularIluminacion() //8
	Definir ancho, largo, superficie Como Real
	
	Hacer
		Escribir "Dime el ancho de la habitacion"
		Leer ancho
		Si ancho <= 0
			Escribir "Ancho debe ser mayor que 0"
		FinSi
	Mientras Que ancho <= 0
	
	Hacer
		Escribir "Dime el largo de la habitacion"
		Leer largo
		Si largo <= 0
			Escribir "Largo debe ser mayor que 0"
		FinSi
	Mientras Que largo <= 0
	
	superficie = calcularSuperficie(ancho, largo)
	Escribir "Se necesitan " superficie*0.20 "m2 de superficie de ilimunacion natural"
	Leer ancho //pausa
	//Escribir "calcularIluminacion"
FinFuncion

