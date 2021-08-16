struct Almacen{
  //var main = main()
  var inventario: [[String : Double]]

 init(){
    inventario = []
  }

  func showProducts(by category: Category){
    for minib in inventario{
      /*if (minib.keys isInCategory(category: category)){
        print(minib.keys)
      }
      */
      //print("H")
      print(minib.keys)
      //print(main(tenisnike.nombre))
    }
  }

  mutating func addProducts(producto:String, cantidad:Double){
  let minib = [producto : cantidad]
  inventario.append(minib)
  }

  func showProducts(){
    print("Inventario:")

    for minib in inventario{
    print(minib)
    }
  }

  mutating func removeProducts(producto: String, cantidad: Double){
    /*
    print("borrar")
    print(main.producto.precio)
    */
  var i = 0;
    for var chat in inventario{
      if let valor = chat[producto]{
        let total = valor - cantidad
        print(producto, total, i)
        chat[producto] = total
        inventario[i] = chat
      } 
      i += 1
    }
  }

}

