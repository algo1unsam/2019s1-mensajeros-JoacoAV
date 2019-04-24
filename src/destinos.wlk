import mensajeros.*

object puenteBrooklyn {
	method dejaPasar(mensajero) = ((paquete.estaPago()) and (mensajero.peso() <= 1000))
}

object matrix {
	method dejaPasar(mensajero) = ((paquete.estaPago()) and (mensajero.puedeLlamar()))

}