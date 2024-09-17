import comidas.*
import pepita.*
import wollok.game.*

object nido {
	var property position = game.at(7,4)
	method image(){
		return "nido.png"
	}
	method interactuar(algo){
		
	}
	method interactuarColision(algo){
		//algo.energia(0)
		game.say(self,"GANASTE!")
		game.onTick(2000,"finalizar juego", {game.stop()})
	}
}

object silvestre {
	var property position = game.at(2,0)
	method image(){
		return "silvestre.png"
	}
	method interactuar(algo){
		
	}
	method interactuarColision(algo){
		algo.energia(0)
		game.say(self,"Te atrape, perdiste")
		game.onTick(2000,"finalizar juego", {game.stop()})
	}

}

