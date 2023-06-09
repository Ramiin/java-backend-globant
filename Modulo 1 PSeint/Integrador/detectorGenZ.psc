Algoritmo detectorGenZ
	
	Definir muestra, matriz como Cadena
	Definir M Como real
	Definir longitudMuestra Como Entero
	Definir genEncontrado como logico
	
	
//	muestra <- "ACDDCADBCDABDBBA"
	//	muestra <- "DCDDCDDBCDDBDBBD"
//	muestra = "ADDDABBDD"
	//	muestra <- "CDDACCACCACAAABC"
	//	muestra = "CACBCACAC"
//	muestra = "ACCDBBADDDCCBACABDCBDCBADBDACBBBBDAABBCCBAACCABDBDCDDABDBDADAAACBBBBCDDDCBBBDDCDABBDDABDBDBBACADCDAAADACDDDACCDCACDDABACDCCCAABDDCCACDADDBCBAACCDBCBCDDDCAACCBAADCBBBCDCBBACBDCCDDADBABCAABBACABDCAACCBDADDCAAACCDBDBBCDDDDDACBCDDADDDDCBADADBDCADDABBCDAACBCCDDDADDADADAACCACDCDDABCCCADABBACDACCAADDBCBCCDADBCCADAAABDDDAABBABCADDCCAADDCDDCDCACBADADACADDAADCBDBCDBDDACDCBCDCCABBDCBACDDACCCDADBCADCACAAABBBCADDDDBCBACDBDAAADDDACCDACBBBADACCCDCACCBACDADBCBBDADACABAACBCCADDCCCCACCCCADBCCDAADCAABBABAADDBDADDABABCCABBCDDACCADAAADBBCCDBADCADCBBDADACCDDBCAAABBBDCAAAACBAADBABBABACDDBBCBDCDCADABABBDADCBADAACDBCBDABADBCBADCACADAABCDDCABACDDBDCBCBDCAAACBDABBCACBACCCBACACDCADBDCDCDDCAACDBDCBACDBBDAABDBBCBAAADBABDBAACAAACDCDAAABABDDDBCACADCBBAADCCDABCCCBBCACCBAABDAADDDCDACDDDBCDCCBABDABACCDCDCDABAABCABBADADCBDDACDDCDDCDACDADADCACBCDABABDDCCDBCCDABACDBDAABDBDDDBADDBACABDCDDBACDDBBDDBBACBCCAACABBDADDBCAACCBCCDADDBCAADDADCCCBAAABABBBBBCABAACADBCBBABACCABCDAABADCCCCDCCADDDCCABBDDDAAADDADACBBBCBDAADACABABBAACCCADADDABDBCADDDCCDBBCCBCDCDBDDDDCACDACDBBBDDBADDACADDADDABCACDCBBADDABBBDCBBDCDAABADDDDDBCACCCCAAACBCBCDBACCCDACCCDBCBDCBADBCDDACCDBDBDBCAAACDDCBAABDBCAADCADDBABABDCBCBCBBBCACBCADDCAAAAAACBBACBBCCACBDCDDDDADCAAACBABDDBDADBAADCBABDDBCDBABDBAADDDBACBBBCCCDBDDBDDAADBBADADDDCBCACBABCDBBABAADABCABCDBACBBBCDBADADDBDCBDABBDDDCDDCCACDCBDCADABAABCDCAACCDDBADBDBCDACAAACBCADCCCBAC"
//	muestra = "CCADDBACCDDDDBDBCCABBAABDBCDCADDABABCDCDDABBBCABBABBDCADCCDABDDACDBBBDBDCCDDCABCAAAACDCDCCACDCDDADAADDACBDBCCDDBCBCBBAAADDAADCAABBBCBCCBCBDBCCBBCBABADAACDBDBADCBBACDADAADABBDBDBDBDCCDDCABCCCCCADBBBBCCDACCBBBDBDAADDBCCBCCBCBDDDDCCBAAACDDBBCAABAADABBBCCCCDCCBBDCDABCDACBCBACDBCCDABDBDCDCADCCBBADDBDCCADCCDCCACCDCDBCDBBADBAADBBCAADDABCAADADAABAACCBABDADADADDBCABDCCBBAADDDCDDCBADBCACCAAADCCDDABDBACBCAAADDBADBDACDDBDCBDCCCDDCACBCCCACCCCBACBAAAAACBCBCDAADCAACBCABDDABCBCBACCADABBBABBBBBAACADDDDBABACADAAABDDDCCDCACAACACADADBABACBABDBBADCDBBDACDCAABCADDBDBDCAABDCDABDDADDCDDBCBCDADCDBBDACABCDAABBCBADDDBCBADCABACDCABBCBCBCBCADBABBDBCCCADCADDCBABBDDDBBCBCDABACDDDABCCDBACCBDBADADDDAAACBDCDCCAACBDDCDCBADACDDDDBDCBAACDADBBDBDBCCACADBAABBAADAADDDACDDCDBDDBBDAADDAACCCACDBBBBBDCDCDDDABBCBAAADACADDCDCDCBCDCACAAABCADBDBBDDACCBBDABDDBCADCCCADDCDBACBBBDAADDCDAAADBBCDADBDBCBDDCAABCCDCCDCABCAACADADAACADDBBDABAABACDACDCDBBDDCCBCBCAAACBDBDBBBDBDBBCADCBACDCCBDACBBACBCADCDBACCADCDBDCDBBACBBCDCAAAAABCCDDCDDBBCBABCBCAABDBCCACBABDCABAACBDBDBCCCCADBBCDCCCAABADBACDDBADCDCAADDDCBDDBDCDCCCCCCCDBCDDBACBBCDACDADCACBDBBCCCDCCBCBCDACBDDDACCCAADBDBBDADDCCDDDBCDABCCBACCCCCBAACCBCABAAABBCABBCACCCABCDACBCDBDACACDDCACBCBBCCADABCBBDDABADDAAABACCBDCDABCBBBBACCDABAACDCACCCBBCDDACCDBCBCBAACBBBBADBCBCDABAAAABADAAAACDACADACDBBCCABADDDCACDCAACCDABBDBDAABADDBDCCCACDADBDDDCBBCBDCADCBCDAABDDDDBBBBCDDCC"
	//	muestra = "BCBBABBACBBBBCBB"
	//	muestra = "BCAADCCBABCCBABB"
	muestra = "ABAABBCBD"
	longitudMuestra <- longitud(muestra)
	M <- raiz(longitudMuestra)
	genEncontrado = validarMuestra(muestra, M)
	si validarMuestra(muestra, M) entonces
		Dimension matriz[M,M]
		
		Definir i, j Como Entero
		
		para i <- 0 hasta M-1 hacer
			para j <- 0 hasta M-1 hacer
				matriz[i,j] <- Subcadena(muestra, (i)*M + j, (i)*M + j)
			finPara
		finPara
		mostrarMatriz(matriz, M)
		buscarGenZ(matriz, M)
	finSi
FinAlgoritmo

Funcion retornar <-  validarMuestra(muestra, M) 
	Definir retornar Como Logico
	Definir longitudMuestra, i Como Entero
	Definir base1, base2 como caracter
	retornar = Verdadero
	// Verificar que el tama�o de la muestra corresponda al tama�o de la matriz
	longitudMuestra <- longitud(muestra)
	si (longitudMuestra <> M * M) O trunc(M) <> M entonces
		escribir("La muestra no es una matriz cuadrada.")
		retornar = falso
	finSi
	
//Verificar que el tama�o de la matriz sea v�lido (3x3, 4x4 o 37x37)
		si M <> 3 y M <> 4 y M <> 37 entonces
				escribir("El tama�o de la matriz no es v�lido.")
				retornar = falso
		finSi
	
		//Verificar que las diagonales principales de la matriz sean iguales
//		para i <- 0 hasta M-1 hacer
//			base1 <- Subcadena(muestra, i, i)
//			base2 <- Subcadena(muestra, (i)*M + i, (i)*M + i)
//			si base1 <> base2 entonces
//				escribir("La muestra no contiene el gen Z.")
//				retornar = falso
//			finSi
//		finPara
		
		
//		Si retornar = Verdadero
//			Escribir("La muestra es v�lida y contiene el gen Z.")
//		FinSi
	
FinSubproceso

SubProceso  mostrarMatriz(matriz, M)
	Definir i, j Como Entero
	para i <- 0 hasta M-1 hacer
		para j <- 0 hasta M-1 hacer
			Escribir Sin Saltar " " matriz[i,j] " "
		finPara
		escribir " "
	finPara
FinSubProceso




SubProceso buscarGenZ(matriz, M)
	Definir baseActual1, baseActual2, base1, base2 Como Caracter
	Definir encontrado Como Logico
	encontrado = VERDADERO
	base1 = matriz[0, 0]
	base2 = matriz[0, M-1]
	Escribir "Buscando gen Z...."
	Definir i, j Como Entero
	Para i= 0 Hasta M-1
			Si (matriz[i,i] <> base1) O (matriz[i,M-i-1] <> base2)
				Escribir "El gen Z no ha sido encontrado."
				encontrado = FALSO
				j = M
				i = M
			FinSi
	FinPara
	
	Si encontrado Entonces
		Escribir "SE HA ENCONTRADO EL GEN"
	FinSi

	
	
	
FinSubProceso

