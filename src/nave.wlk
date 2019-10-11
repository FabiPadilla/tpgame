import wollok.game.*
import armas.*
import movimiento.*

object nave {
	
	var armas =[]
	 
	 var  property combustible = 20
	 
	 var property position = game.origin()
	 
	 method image() 
	 // if (self.caiEnAgujero(unAgujero)) { 
	 //game.removeVisual(self)
	 //}
	 //else
	 = "nave.png"
	 //game.say(self,"caiste en un agujero negro")
	 
 
	// }

      method irA(nuevaPosicion) {
      if (self.noTengoCombustible()){
	   self.viaja(position.distance(nuevaPosicion))
	   position = nuevaPosicion
      }
      else{
      	//FALTA PONERLE TIMEPO PARA VER EL MENSAJE ANTES DE QUE CIERRE
      	game.say(self,"Te quedaste sin combustible")
      	}
      }
      
      method viaja(distancia) {
	   combustible = combustible - distancia
	
      }

      method noTengoCombustible(){
	   return combustible>=0
      } 
   
      method caiEnAgujero(unAgujero){
	  return if(position== unAgujero.position()){
	  	
	  game.removeVisual(self)
	  game.addVisual(pikachu)
	  game.say(pikachu,"Caiste en un Agujero.PERDISTE!")
	  game.removeVisual(unAgujero)
	  
	  
	  	
	  }
	  else {}
      }
    
      method juntarArma(nuevaArma){
      	armas.add(nuevaArma)
      }  
      
     // method noTeMuevas(){ 	
     //	game.say(self,"Perdiste")
      //	game.stop()
      	//}
      
}