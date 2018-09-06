import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 
	var property posicion = game.at(3,3)
	
	method imagen(){ 
		if (energia<10){
			return "pepona.png"
		}
		if (energia>100){
			return "pepita2.png"
		}
		return "pepita.png"
	}
	
	method come(comidaP) {
		energia = energia + comidaP.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
				self.move(unaCiudad.posicion())
				ciudad = unaCiudad
			}
		else{
			game.say(self,"Ya estoy en esa ciudad!")
		}
	}
	
	method energiaParaVolar(distancia) = 15 + 5 * distancia
		
	method move(nuevaPosicion) {	
		var distancia=posicion.distance(nuevaPosicion)
		if (energia>=self.energiaParaVolar(distancia)){
		energia -= self.energiaParaVolar(distancia)
		self.posicion(nuevaPosicion)
		}
		else{
			game.say(self,"Dame de comer primero!")
		}
	}	
	
	method teEncontro(alguien) { 
		alguien.colisionPepita()		
	}
}
