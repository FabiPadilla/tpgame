import wollok.game.*
import nave.*

object movimiento {
	
	method configurarFlechas(visual){
		keyboard.up().onPressDo{nave.irA(nave.position().up())}
		keyboard.down().onPressDo{nave.irA(nave.position().down()) }
		keyboard.left().onPressDo{ nave.irA(nave.position().left())}
		keyboard.right().onPressDo{ nave.irA(nave.position().right())}
   }
	
	method mover(direccion,personaje){
		personaje.position(direccion.siguiente(personaje.position()))
	}	
	
}

object izquierda { 
	method siguiente(position) = position.left(1) 
	
}

object derecha { 
	method siguiente(position) = position.right(1) 
	
}

object abajo { 
	method siguiente(position) = position.down(1) 
	
}

object arriba { 
	method siguiente(position) = position.up(1) 
	
}
	
