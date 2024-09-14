import comidas.*
import pepita.*
import wollok.game.*

object nido {
	var property position = game.at(4,7)
	method image(){
		return "nido.png"
	}
	method interactuar(algo){
		
	}
	method colisionar(algo){
		algo.energia(0)
		game.say(algo,"GANE!")
		game.stop()
	}
}

object silvestre {
	var property position = game.at(2,0)
	method image(){
		return "silvestre.png"
	}
	method interactuar(algo){
		
	}
	method colisionar(algo){
		algo.energia(0)
		game.say(self,"Te atrape, perdiste")
	}

}

