
class Equipo {
 const nombre
 var  nivelEnergiaBase
 var property listaTecnologiasComplementarias = []
 const entrenador

method energiaTotal() = nivelEnergiaBase + listaTecnologiasComplementarias.filter({t => t.activa()}).sum({t => t.valorEnergetico()})

}

class Luminicos inherits Equipo {
 var listaCristalesSolares = []

 const nivelRadiacion
 /* if I want to change nivel : method nuevoNivelRad(nuevaRadiacion)= nivelRadicion = nuevaRadiacion but it must be a var*/

method cristalesSolares(unCristal) = 
listaCristalesSolares.add(unCristal)

override method energiaTotal() = 
if (nivelRadiacion <= 5000){
 (super() * 0.10) + super()
}else{
   super()
}

}

class Sinteticos inherits Equipo {
   const estaCertificado
   var nivelProcesamientoCentral
   const  modulosActivos 

   override method energiaTotal()=
    if (modulosActivos > 5 ){
     super() - (super() * 0.20)
    }else{
      super()
    }
  
}
class Etericos inherits Equipo{
 var fluctuacionDimensional
 var cantidadPortalesAbiertos
}

class Entrenador {
    var cantidadCicloSolar
    var enSintoniaConEquipo
 var nivelPrecisionEstrategica
 const  rol
 
method initialize(){
    if (rol != "Estratega Cuántico" &&
        rol != "Arquitecto de Energía" &&
        rol != "Guía Mental") {
      throw new Exception(message = "Rol no homologado por la FOZ")
    }
}
}

class Tecnologia{
 const property nombre
 var property valorEnergetico
 var property activa

}