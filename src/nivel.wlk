import nave.*
import movimiento.*
import wollok.game.*
import armas.* 

object nivel {

method configurete() {
	
	// LIMITES DEL JUEGO
	game.title("JuegoSpace")
	game.height(10)
	game.width(10)
    // FONDO
	game.boardGround("suelo.png")
    // VISUALES
	game.addVisual(nave)
	
	//game.addVisualCharacter(nave)
	movimiento.configurarFlechas(nave)
	game.addVisualIn(bomba, game.at ( 0, 1 ))
	//game.addVisualIn(misiles, game.at ( 5, 3 ))
	
	
	/* // TECLADO
	keyboard.f (). onPressDo {nave.misiles ()}
	keyboard.b (). onPressDo {nave.bomba ()}
	*/
		
	/*keyboard.space (). onPressDo {game.say (nave,   " combustible: "  + nave.combustible ())}  */
}
}