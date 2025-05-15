import 'dart:io';

void main() {
  List<Map<String, dynamic>> productos = [];

  while (true) {
    print('--- Menú ---');
    print('1. Agregar producto');
    print('2. Mostrar productos');
    print('3. Actualizar producto');
    print('4. Eliminar producto');
    print('5. Salir');
    stdout.write('Seleccione una opción: ');
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarProducto(productos);
        break;
      case '2':
        mostrarProductos(productos);
        break;
      case '3':
        actualizarProducto(productos);
        break;
      case '4':
        eliminarProducto(productos);
        break;
      case '5':
        print('Saliendo del programa...');
        return;
      default:
        print('Opción inválida. Intente nuevamente.');
    }
  }
}

// Función para agregar un producto
void agregarProducto(List<Map<String, dynamic>> productos) {
  stdout.write('Ingrese el nombre del producto: ');
  String? nombre = stdin.readLineSync();
  stdout.write('Ingrese el precio del producto: ');
  double? precio = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Ingrese la cantidad disponible del producto: ');
  int? cantidad = int.tryParse(stdin.readLineSync() ?? '');

  if (nombre != null && cantidad != null && precio != null) {
    Map<String, dynamic> nuevoProducto = {
      'nombre': nombre,
      'precio': precio,
      'cantidad': cantidad,
    };
    productos.add(nuevoProducto);
    print('Producto agregado exitosamente.');
  } else {
    print('Error al agregar el producto. Verifique los datos ingresados.');
  }
}



// Función para mostrar los productos
void mostrarProductos(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('No hay productos disponibles.');
  } else {
    print('--- Productos ---');
    for (int i = 0; i < productos.length; i++) {
      print('Producto ${i + 1}:');
      print('Nombre: ${productos[i]['nombre']}');
      print('Precio: ${productos[i]['precio']}');
      print('Cantidad: ${productos[i]['cantidad']}');
      print('------------------');
    }
  }
}



// Función para actualizar un producto
void actualizarProducto(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('No hay productos disponibles para actualizar.');
    return;
  }
  mostrarProductos(productos);
  stdout.write(
    'Seleccione el numero del producto a actualizar (1-${productos.length}): ',
  );
  int? indice = int.tryParse(stdin.readLineSync() ?? '');
  if (indice == null || indice < 1 || indice > productos.length) {
    print('Índice inválido. Intente nuevamente.');
    return;
  }
  Map<String, dynamic> producto = productos[indice - 1];
  stdout.write(
    'Ingrese el nuevo nombre del producto (actual: ${producto['nombre']}): ',
  );
  String? nuevoNombre = stdin.readLineSync();
  stdout.write(
    'Ingrese el nuevo precio del producto (actual: ${producto['precio']}): ',
  );
  double? nuevoPrecio = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Ingrese la nueva cantidad disponible del producto (actual: ${producto['cantidad']}): ');
  String? nuevaCantidad = stdin.readLineSync();
  if (nuevoNombre != null && nuevoPrecio != null && nuevaCantidad != null) {
    producto['nombre'] = nuevoNombre;
    producto['precio'] = nuevoPrecio;
    producto['cantidad'] = nuevaCantidad;
    print('Producto actualizado exitosamente.');
  } else {
    print('Error al actualizar el producto. Verifique los datos ingresados.');
  }
}


// Función para eliminar un producto
void eliminarProducto(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('No hay productos disponibles para eliminar.');
    return;
  }
  mostrarProductos(productos);
  stdout.write(
    'Seleccione el numero del producto a eliminar (1-${productos.length}): ',
  );
  int? indice = int.tryParse(stdin.readLineSync() ?? '');
  if (indice == null || indice < 1 || indice > productos.length) {
    print('Índice inválido. Intente nuevamente.');
    return;
  }
  productos.removeAt(indice - 1);
  print('Producto eliminado exitosamente.');
}
