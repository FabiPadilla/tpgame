import wollok.game.*
import armas.*
import movimiento.*

object nave {
	
	var armas =[]
	 
	 var  property combustible = 20
	 
	 var property position = game.origin()
	 
	 method image() = "nave.png"
	
     method irA(nuevaPosicion) {
      return if (self.noTengoCombustible()){
	        self.viaja(position.distance(nuevaPosicion))
	        position = nuevaPosicion
      }
            else{
      	        //FALTA PONERLE TIEMPO PARA VER EL MENSAJE ANTES DE QUE CIERRE
            game.onTick(100,"ARMA",{game.say(self,"Te quedaste sin combustible")})
     
            game.onTick(2000,"ARMA",{game.stop()})
           }
      }
     
      method viaja(distancia) {
	   combustible = combustible - distancia
      }

      method noTengoCombustible(){
	   return combustible>0
      } 
          
      method juntarArma(nuevaArma){
      	armas.add(nuevaArma)
      }  
      
      method armasQueTengo(){
        game.say(armas,"mis armas")//Quiero mostrar las armas que voy juntando o que junté
        }
}