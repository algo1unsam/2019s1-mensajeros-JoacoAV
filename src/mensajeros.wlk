import destinos.*
import transportes.*

object mensajeria {
	var mensajeros = #{}
	
	method contratar(alguien) {
 		mensajeros.add(alguien)
 	}
 	
 	method mensajeros() = mensajeros

}


object paquete {
	var property pago = false
	var property destino = puenteBrooklyn
	
	method pagar(){
		pago = true
	}
	
	method estaPago() = pago
	
}


object roberto {
	var property transporte = bicicleta
	
	method peso() = 90 + transporte.peso()
	
	method puedeLlamar() = false
	
	method puedeEntregar() = paquete.destino().dejaPasar(self)
}

object chuckNorris {
	
	method peso() = 900
	
	method puedeLlamar() = true
	
	method puedeEntregar() = paquete.destino().dejaPasar(self)
}

object neo {
	
	var property credito = true
	
	method peso() = 0
	
	method puedeLlamar() = credito
	
	method puedeEntregar() = paquete.destino().dejaPasar(self)
}

