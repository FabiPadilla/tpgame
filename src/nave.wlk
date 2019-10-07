import wollok.game.*

object nave {
	
	// var armasQueTengo =[]
	 
	 var  property combustible = 100
	 
	 var property position = game.origin()
	 
	 method image()  = "nave.png"
	// if ( position==game.at(5,7) ){
	 //game.say(self,"caiste en un agujero negro")
	 //game.removeVisual(self)}
	 //pikachu.image()
	 //else 
	// }

method irA(nuevaPosicion) {
	self.viaja(position.distance(nuevaPosicion))
	position = nuevaPosicion
}
method viaja(distancia) {
	combustible = combustible - distancia
	
}
     
    
      
}