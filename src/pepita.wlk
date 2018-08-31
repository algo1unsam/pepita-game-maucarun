import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 
	var property posicion = game.at(3,3)
	
	//var energiaNecesaria = null
	
	method imagen(){ 
		var imagen
		if (energia<10){
			imagen = "pepona.png"
		}
		if (energia>100){
			imagen = "pepita2.png"
		}
		imagen = "pepita.png"
	}
	
	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			if (energia>=energiaParaVolar){
				self.move(unaCiudad.posicion())
				ciudad = unaCiudad
			}
			else{
				game.say(self,"Dame de comer primero!")
			}
			}
		else{
			game.say(self,"Ya estoy ahi!")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia
	
//	method energiaParaVolar(distancia){
//		energiaNecesaria=15 + 5 * distancia
//	}

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	
	
	method teEncontro(alguien) { 
		alguien.colisionPepita()		
	}
}
