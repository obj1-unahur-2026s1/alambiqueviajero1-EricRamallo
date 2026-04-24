object llavero {
}
object mateConYerba {
}
object mateSinYerba {
}
object bidonDePetroleo {
}
object arma {
}
object jardinFlotante {
}

object paris {
  method recuerdo() {
    return llavero
  }
  method requisito(elConductor) {
    return elConductor.tieneSuficienteCombustible()
  }
}
object buenosAires {
  var suRecuerdo = mateConYerba
  method porElPresidente() {
    return true
  }
  method recuerdo() {
    return suRecuerdo
  }
  method cambioPresidencial() {
    if(not self.porElPresidente()){
      suRecuerdo = mateSinYerba
      }else{
      suRecuerdo = mateConYerba
    }
  }
  method requisito(elCondutor) {
    return elCondutor.esRapido()
  }

}
object bagdad {
    var suRecuerdo = bidonDePetroleo //arma o jardinFlotante
    method nuevoAnio(unRecurdo) {
      suRecuerdo = unRecurdo
    }
    method recuerdo() {
        return suRecuerdo
  }
  method requisito(elConductor) {
    return true
  }
}
object lasVegas {
    var seConmemora = paris
    var suRecuerdoEs = llavero
    method cambiarConmemoracion(unaCiudad) {
      seConmemora = unaCiudad
    }
    method seConmemora(unaCiudad) {
        suRecuerdoEs = unaCiudad.recuerdo()
    }
    method recuerdo() {
        return suRecuerdoEs
  }
  method requisito(elConductor) {
    return seConmemora.requisito(elConductor)
  }
}
object osaka {
  method recuerdo() {
    return jardinFlotante
  }
  method requisito(elConductor) {
    
    return elConductor.tieneSuficienteCombustible() && not elConductor.esRapido()
  }
}