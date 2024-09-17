import extras.*
import wollok.game.*

object manzana {
	var property position = game.at(4,3)
	method image(){
		return "manzana.png"
	}
	method energiaQueOtorga(){
		return 50
	}
	method interactuar(algo){
		algo.come(self)
	}
	method interactuarColision(algo) {
	  
	}
	method energiaQueAporta(){
		return 50
	}
}

object alpiste {
	var property position = game.at(9,9)
	method image(){
		return "alpiste.png"
	}
	method energiaQueOtorga(){
		return 30
	}
	method interactuar(algo){
		algo.come(self)
	}
	method interactuarColision(algo){
		
	}
	method energiaQueAporta(){
		return 50
	}
}

