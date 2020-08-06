import nave.*
import movimiento.*
import wollok.game.*
import armas.*

object nivel {

	method configurete() {
		// LIMITES DEL JUEGO
		game.title("GameSpace")
		game.height(10)
		game.width(10)
			// FONDO
		game.boardGround("suelo11.png")
			// VISUALES
		game.addVisual(bomba)
		game.addVisual(misil)
		game.addVisual(agujero)
		// Por defecto sirve para que el objeto nave se mueva con la teclas arriba/abajo/izq/der y no se vaya del tablero.
		//Si queres que más objetos se muevan ,no sirve porque todos se van a mover con las mismas teclas.
		game.addVisualCharacter(nave)
		game.whenCollideDo(nave, { arma => arma.colisionoCon(nave)})
	}

}

