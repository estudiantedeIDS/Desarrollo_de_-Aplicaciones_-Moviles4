var aux: String = ""
var opcionIngresada: String = aux
var saldoTotal: Double = 0

func deposito(){         // Declaración de la funcion deposito
print("Ingrese la cantidad a Depósitar")
print("\n")
aux = readLine()!
opcionIngresada = aux
  
let cantidadDepositada = Double(opcionIngresada)!  // Creando la variable double para sumarla al saldo total
print("\n")
print("Abono depositado exitosamente por $ \(cantidadDepositada) pesos")
saldoTotal = saldoTotal + cantidadDepositada       //Actualización del saldo total
print("\n")
print("Tu saldo actual es: $ \(saldoTotal) pesos")
print("\n")
}    // cierre función deposito

func retiro(){      //Declaración de la función retiro
  if saldoTotal == 0{      // Inicio if 1
    print("No tienes saldo disponible para retirar...")
    print("\n")
    print("¿Deseas realizar otra operación? S/N")
    aux = readLine()!
    opcionIngresada = aux
    if opcionIngresada == "N" || opcionIngresada == "n"{   // Inicio if 2
      opcionIngresada = "4"
      print("Cerrando sesión, vuelva pronto !!!")  }  // cierre if 2
    } // cierre if 1
    else{    // Inicio else 1
      print(" Ingresa la cantidad que deseas retirar:")
      print("\n")
      aux = readLine()!
      opcionIngresada = aux
      let cantidadRetirada = Double(opcionIngresada)!
      if cantidadRetirada > saldoTotal{   // Inicio if 3
        print("Lo siento, la cantidad a retirar es mayor al saldo disponible")
        print("\n")
        print("¿Deseas retirar una cantidad menor? S/N")
        aux = readLine()!
        opcionIngresada = aux
        if opcionIngresada == "N" || opcionIngresada == "n" {   // Inicio if 4
          opcionIngresada = "4"
        
         } else{      // Inicio else 3
           print (" Ingresa la cantidad que deseas retirar:")
          aux = readLine()!
          opcionIngresada = aux
          let cantidadRetirada = Double(opcionIngresada) ?? 0.0
            if cantidadRetirada <= saldoTotal{   // Inicio if 4
              saldoTotal = saldoTotal - cantidadRetirada  
              print("\n")
              print ("Tome su efectivo, su saldo actual es de $ \(saldoTotal)")
              print("\n")
              
            }  //Cierre if 4
          
         } // cierre else 3
        
      }
        else{         // cierre if 2  e inicio else 3
          saldoTotal = saldoTotal - cantidadRetirada    
          print("\n")
          print (" Tome su efectivo, su saldo actual es de $ \(saldoTotal)")
          print("\n")
          }     // cierre else 3         
         }    // Cierre if 3 e Incio else 3
        }  // Cierre funcion retiro

while opcionIngresada != "4" { // Inicio Ciclo while para que se repita el menú siempre que la opción sea diferente de 4
print(" *****  Bienvenidos a Banco Mexicano *****")
print("      ***   Banca en linea   ***       ")
print("\n")
print("1.- Depósito")
print("2.- Retiro")
print("3.- Saldo")
print("4.- Salir")
print("\n")
print("Eliga una opción por favor...")

aux = readLine()!         // lectura de la 
opcionIngresada = aux     // opción ingresada

switch opcionIngresada{    //Inicio ciclo switch 1
  case "1":
   deposito()
   print("\n")  
   print(" Deseas realizar otro Depósito? s/S n/N")
     aux = readLine()!  
     opcionIngresada = aux
     switch opcionIngresada {    // Inicio Switch  2
        case "s", "S", "Si", "sI","SI","si":
        deposito()

        case "n", "N", "No", "nO", "NO", "no":
        print("Desea continuar con otra operación? (S/N)")
            aux = readLine()!  
            opcionIngresada = aux
               
         if(opcionIngresada == "N") || (opcionIngresada == "NO") || (opcionIngresada == "no") || (opcionIngresada == "n") {
           print("Gracias por su visita, vuelva pronto !!!")
           print("\n")
           }  // cierre if
       
        default:
        print(" ¡Opción no válida!")
        }  // cierre  switch 2

     case "2":
        retiro()  
        print("¿Deseas realizar otro retiro? S/N:")
        aux = readLine()!
        opcionIngresada = aux
               
          switch opcionIngresada {  // Inicio switch 3
            case "S", "s", "Si", "sI","SI","si":
            retiro()
            case "N","No","n","NO","no","nO":
            print("¿Deseas realizar otra operación? S/N ")
                  aux = readLine()!
                  opcionIngresada = aux
                  if(opcionIngresada == "N") || (opcionIngresada == "NO")  {   //Inicio if 5
            opcionIngresada = "4"
                   
            }   // Cierre if 5
            default:
            print("Opción no válida!")
         }  // cierre switch 3   
     
    case "3":
    print("Su saldo actual es: $ \(saldoTotal) pesos")  
    print("\n")
    print("Desea continuar con otra operación? (S/N)")
      aux = readLine()!  
      opcionIngresada = aux
      switch opcionIngresada {  // Inicio switch 3
      case "N","No","n","NO","no":
        print("Gracias por su visita, vuelva pronto !!!")
        opcionIngresada = "4"
        default:
        print("\n")
      }    // Cierre switch 3     
        
  case "4":
    print("\n")
    print("Cierre de sesion, buen día !!!")
    default:
    print("\n")
    print(" ¡ Opción no válida !")
    print("\n")
  
    }   //cierre ciclo switch 1
  }   // cierre ciclo while