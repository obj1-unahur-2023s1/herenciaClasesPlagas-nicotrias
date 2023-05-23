import plagas.*

class Barrio{
	const property elementos = []
	
	method agregarElemento(unElemento){
		elementos.add(unElemento)
	}	
	method quitarElemento(unElemento){
		elementos.remove(unElemento)
	}
	
	method cantidadElementosBuenos()= elementos.count({e=> e.esBueno()})
	
	method esCopado()= self.cantidadElementosBuenos() > elementos.size() / 2
}


class Hogar {
	var property nivelDeMugre
	var property confort
	
	method esBueno()= nivelDeMugre <= confort / 2
	
	method recibirAtaque(unaPlaga){
		nivelDeMugre += unaPlaga.nivelDeDanio()
	}
}

class Huerta {
	var property capacidadProduccionMensual
	var property nivelDeProduccion = produccion
	
	method esBueno()= capacidadProduccionMensual > nivelDeProduccion.produccionBuena()
	
	method recibirAtaque(unaPlaga){
		capacidadProduccionMensual = 0.max(capacidadProduccionMensual - unaPlaga.nivelDeDanio() * 0.1 )
		if(unaPlaga.transmiteEnfermedades()){
			capacidadProduccionMensual = 0.max(capacidadProduccionMensual - 10)
		}
	}
}

class Mascota {
	var property nivelDeSalud
	
	method esBueno()= nivelDeSalud > 250
	
	method recibirAtaque(unaPlaga){
		if(unaPlaga.transmiteEnfermedades()){
		nivelDeSalud = 0.max(nivelDeSalud - unaPlaga.nivelDeDanio())
		}		
	}
}


object produccion {
	var property produccionBuena 
	
}
