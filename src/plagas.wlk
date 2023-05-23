import elementos.*

class Plaga{
	var property poblacion 
	
		method transmiteEnfermedades()= poblacion >= 10
		method atacar(unElemento){
			unElemento.recibirAtaque(self)
			poblacion *= 1.1
		}
}


class Cucaracha inherits Plaga{
	var property pesoPromedio
	
	override method transmiteEnfermedades()= super()  and pesoPromedio >= 10 
	method nivelDeDanio()= poblacion / 2
	override method atacar(unElemento){
		super(unElemento)
		pesoPromedio += 2
	}
}

class Pulga inherits Plaga{
	
	method nivelDeDanio()= poblacion *2

}

class Garrapata inherits Pulga{
	override method atacar(unElemento){
		unElemento.recibirAtaque(self)
		poblacion *= 1.2
	
	}

}

class Mosquito inherits Plaga{
	
	override method transmiteEnfermedades()= super() and poblacion % 3 == 0  
	method nivelDeDanio()= poblacion

}

