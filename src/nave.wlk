import wollok.game.*

object nave {
	
	 var  property armasQueTengo=[]
	 
	var property tieneCombustible = 2
	 
	 var property position = game.origin()
	 
	 method image() = "nave.png"
	
	 //method mensaje(){
	 //return "Tengo una nueva arma"
	 //}
     
     method tomarArma(nuevarma){
       armasQueTengo.add(nuevarma)
     }
     
    
     
      
}