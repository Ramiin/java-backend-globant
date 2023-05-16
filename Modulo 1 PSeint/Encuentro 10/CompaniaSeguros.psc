//Una compa��a de seguros tiene contratados a n vendedores. Cada vendedor realiza
//m�ltiples ventas a la semana. La pol�tica de pagos de la compa��a es que cada vendedor
//recibe un sueldo base m�s un 10% extra por comisiones de sus ventas. El gerente de la
//compa��a desea saber, por un lado, cu�nto dinero deber� pagar en la semana a cada
//vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cu�nto
//deber� pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
//vendedor ingresar cuanto es su sueldo base, cuantas ventas realiz� y cuanto cobr� por
//cada venta.

Algoritmo CompaniaSeguros
	
	Definir n, sueldo_base, cobro_venta, comision, pago_comision, sueldo_total Como Real
	Definir ventas, i, j Como Entero
	Escribir "Ingrese el n�mero de vendedores:"
	Leer n
	
	Para i=1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese el sueldo base del vendedor ", i, ":"
		Leer sueldo_base
		
		Escribir "Ingrese la cantidad de ventas del vendedor ", i, ":"
		Leer ventas
		
		pago_comision <- 0
		
		Para j=1 Hasta ventas Con Paso 1 Hacer
			Escribir "Ingrese el monto cobrado por la venta ", j, " del vendedor ", i, ":"
			Leer cobro_venta
			
			comision <- cobro_venta * 0.1
			pago_comision <- pago_comision + comision
		FinPara
		
		sueldo_total <- sueldo_base + pago_comision
		
		Escribir "El vendedor ", i, " cobrar� ", pago_comision, " por comisiones."
		Escribir "El vendedor ", i, " cobrar� ", sueldo_total, " de sueldo total."
		
	FinPara
	
FinAlgoritmo
