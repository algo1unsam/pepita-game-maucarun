import pepita.*

object roque {
	var property posicion = game.at(6,6)
	var comidaActual = null
	
	method imagen() = "jugador.png"
	
	method levantar(comidaR){
		if (comidaActual!=null){
			game.addVisualIn(comidaActual, game.at(0.randomUpTo(10),0.randomUpTo(10)))
		}
		comidaActual=comidaR
		game.removeVisual(comidaR)
	}
	
	// TODO acá podrías mandarle a pepita por parámetro para que en un futuro
	// pueda ser aplicable a otra ave, está bien igual, una observación nomas
	method colisionPepita(){
		// TODO ojo porque acá comidaActual podria estar en null
		pepita.come(comidaActual)
		game.addVisualIn(comidaActual,game.at(0.randomUpTo(10),0.randomUpTo(10)))
		comidaActual=null
	}
}
