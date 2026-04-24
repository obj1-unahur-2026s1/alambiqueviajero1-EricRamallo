import vehiculos.*
import recuerdos.*

object luke {
    var vehiculo = alambiqueVeloz
    var ciudadAVisitar = buenosAires 
    var viajes = 0
    var recuerdoActual = llavero
    method cambiarVehiculo(nuevoVehiculo) {
        vehiculo = nuevoVehiculo
    }
    method cambiarCiudadAVisitar(otraCiudad) {
      ciudadAVisitar = otraCiudad
    }
    method tieneSuficienteCombustible() {
      return vehiculo.combustible() > 3
    }
    method esRapido() {
      return vehiculo.velocidadMaxima() >= 25
    }
  method loDejaronPasar(unaCiudad) {
    if(self.puedeViajar(unaCiudad)){
        self.cambiarRecuerdo(unaCiudad)
        self.pasoPorAhi()
    } 
  }
  method cambiarRecuerdo(unaCiudad) {
    recuerdoActual = unaCiudad.recuerdo()
  }
  method puedeViajar(unaCiudad) {
    return unaCiudad.requisito(self)
  }
  method pasoPorAhi() {
    viajes = viajes + 1
  }
  method viajo(){
    return viajes
  }
  method recuerdoLlevado() {
    return recuerdoActual
  }
}