object alambiqueVeloz {
  var combustible = 10
  method consume() {
    combustible = combustible - 1
  }
  method combustible() {
    return combustible
  }
  method velocidadMaxima() {
      return 35
  }
}
object chatarra {
  var combustible = 10
    method combustible() {
      return combustible
    }
    method velocidadMaxima() {
      return 25
    }
    method consume() {
      combustible = combustible - 1
    }
    method usarCaniones() {
      combustible / 2
    }
}
object antigualla {
  var combustible = 15
  var acompanientes = 4
  method cambiarNroDeAcomaniantes(unValor) {
    acompanientes = unValor
  }
    method combustible() {
      return combustible
    }
    method velocidadMaxima() {
      return acompanientes*2 - 40
    }
    method consume() {
      combustible = combustible - 1
    }
}
object convertible {
  var combustible = 30
  var convertirse = alambiqueVeloz
  method convertirseEn(unVehiculo) {
    convertirse = unVehiculo
  }
  method estaConvertidoEn() {
    return convertirse
  }
    method combustible() {
      return convertirse.combustible()
    }
    method velocidadMaxima() {
      return convertirse.velocidadMaxima()
    }
    method consume() {
      combustible = combustible - 1
    }
}