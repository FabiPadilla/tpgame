import wollok.game.*

object nave {
	
	 var armasQueTengo =[]
	 
	 var  property combustible = 100
	 
	 var property position = game.origin()
	 
	 method image() {
	 return if (position==game.at(5,7)){
	 game.removeVisual(self)
	 //pikachu.image()
	 }
	 else 
	 "nave.png"
	 
	 }
	

    method meQuedeSinCombustible(){
    	return combustible <0
    }
     
    
      
}