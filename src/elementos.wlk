class Barrio{
	const property elementos = []
	
	method agregarElemento(unElemento){
		elementos.add(unElemento)
	}	
	method quitarElemento(unElemento){
		elementos.remove(unElemento)
	}
	
	method esElementoBueno(unElemento)= unElemento.esBueno()
	
	method esCopado()= elementos.count({e=> e.esBueno()}) > elementos.size() / 2
}


class Hogar {
	var property nivelDeMugre
	var property confort
	
	method esBueno()= nivelDeMugre <= confort / 2
}

class Huerta {
	var property capacidadProduccionMensual
	
	method esBueno()= capacidadProduccionMensual > produccion.produccionBuena()
}

class Mascota {
	var property nivelDeSalud
	
	method esBueno()= nivelDeSalud > 250
}


object produccion {
	var property produccionBuena 
	
}
