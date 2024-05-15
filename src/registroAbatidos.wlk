object registroAbatidosCOD {
	const abatidosXDia = [[20221231,43],[20230101,18],[20230105,49],[20230106,62],[20230107,33],[20230108,39]]
		// 43,18,49,62,33,39 y los días serían 20221231,20230101,20230105,20230106,20230107,20230108
		method lista() = abatidosXDia
		
		method sumarDiaYAbatidos(aaaammdd,abatidos) = abatidosXDia.add([aaaammdd, abatidos])
	
		method cantidadDeDiasRegistrados() = abatidosXDia.size()
		
		method estaVacioElRegistro() = abatidosXDia.isEmpty()
	
		method algunDiaAbatio(cantidad) = abatidosXDia.any({x => x.last() == cantidad}) 
		
		method primerValorDeAbatidos() = abatidosXDia.first().last()
		
		method ultimoValorDeAbatidos() = abatidosXDia.last().last() 
			
		method maximoValorDeAbatidos() = abatidosXDia.map({x => x.last()}).max() 
		
		method totalAbatidos() = abatidosXDia.map({x => x.last()}).sum() 
		//la cantidad de abatidos por el jugador el día indicado.
		method cantidadDeAbatidosElDia(dia)= abatidosXDia.filter({x => x.first() == dia}).last().last()// VER!!
			
		// Demostrar que last() == size()-1.
		method ultimoValorDeAbatidosConSize() 
			= abatidosXDia.size()-1
			
		// los dias que abatió un valor superior al indicado.
		method diasConAbatidosSuperioresA(cuanto) = abatidosXDia.filter({x => x.last() > cuanto}).map({x => x.first()})
			 
		// los valores de abatidos del registro que son valores pares.
		method valoresDeAbatidosPares() = abatidosXDia.map({x => x.last()}).filter({x => x.even()}) 
		
		//la lista de valores que resulta de sumar el valor indicado en 'cantidad' a cada valor de abatidos del registro.
		method abatidosSumando(cantidad) = abatidosXDia.map({x => x.last() + cantidad})
		
		// indica si en el registro, la cantidad de abatidos se encuentra entre los valores indicados.
		method abatidosEsAcotada(n1,n2) = abatidosXDia.all({x => x.last().between(n1,n2)})
		
		//indica si algún día de que se tiene registro, la cantidad de abatidos es mayor al valor indicado.
		method algunDiaAbatioMasDe(cantidad) = abatidosXDia.any({x => x.last() > cantidad})
		
		// indica si todos los días de que se tiene registro, la cantidad de abatidos es mayor al valor indicado.
		method todosLosDiasAbatioMasDe(cantidad) = abatidosXDia.all({x => x.last() > cantidad})
		
		//la cantidad de valores de abatidos diaria que superan a la cantidad indicada para el primer día del registro.
		method cantidadAbatidosMayorALaPrimera() {
			const lP  = abatidosXDia.map({x => x.last()})
			 return abatidosXDia.filter({x => x.last() > lP.first()}).size()
		}
		
		//indica verdadero si en todos los días de los que se tiene registro, el valor de abatidos siempre fue aumentando (mayor valor día a día).
		method esCrack() = abatidosXDia.all({x => x.last() > self.listaDeAbatidos().get(0)-1 })
			
		method listaDeAbatidos() = abatidosXDia.map({x => x.last()})
		 
}



