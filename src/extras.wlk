import comidas.*
import pepita.*
import wollok.game.*

object nido {
	var property position = game.center() 
	method image(){
		return "nido.png"
	}
}

object silvestre {
	var property position = game.origin()
	method image(){
		return "silvestre.png"
	}
	method siguiente() {
		return manzana
	}
	

}

