import 'dart:io';

void main(){

  //Menu principal
  mostrarMenu();
  int opcion = int.parse(stdin.readLineSync()!);

  while (opcion != 5) {
    switch (opcion) {
      case 1:
        stdout.write('Ingrese el nombre del estudiante: ');
        String nombre = stdin.readLineSync()!;
        stdout.write('Ingrese la edad del estudiante: ');
        int edad = int.parse(stdin.readLineSync()!);
        agregarEstudiante(estudiantes, nombre, edad);
        break;
      case 2:
        stdout.write('Ingrese el nombre del estudiante a eliminar: ');
        String nombreEliminar = stdin.readLineSync()!;
        eliminarEstudiante(estudiantes, nombreEliminar);
        break;
      case 3:
        mostrarEstudiantes(estudiantes);
        break;
      case 4:
        stdout.write('Ingrese el nombre del estudiante a buscar: ');
        String nombreBuscar = stdin.readLineSync()!;
        buscarEstudiante(estudiantes, nombreBuscar);
        break;
      default:
        print('Opción no válida. Intente de nuevo.');
    }
    mostrarMenu();
    opcion = int.parse(stdin.readLineSync()!);
  }


}

// Creacion de un map para almacenar estudiantes y sus edades
Map<String, int> estudiantes = {};


//Funcion para agregar un estudiante al map
void agregarEstudiante(Map<String, int> estudiantes, String nombre, int edad) {
  estudiantes[nombre] = edad;
  print('Estudiante agregado: $nombre, Edad: $edad');
}

//Funcion para eliminar un estudiante del map
void eliminarEstudiante(Map<String, int> estudiantes, String nombre) {
  if (estudiantes.containsKey(nombre)) {
    estudiantes.remove(nombre);
    print('Estudiante eliminado: $nombre');
  } else {
    print('El estudiante $nombre no existe en el registro.');
  }
}

//Funcion para mostrar todos los estudiantes del map
void mostrarEstudiantes(Map<String, int> estudiantes) {
  print('Lista de estudiantes:');
  estudiantes.forEach((nombre, edad) {
    print('$nombre: $edad años');
  });
}

//Funcion para buscar un estudiante en el map
void buscarEstudiante(Map<String, int> estudiantes, String nombre) {
  if (estudiantes.containsKey(nombre)) {
    print('El estudiante $nombre tiene ${estudiantes[nombre]} años.');
  } else {
    print('El estudiante $nombre no existe en el registro.');
  }
}

//Menu principal
void mostrarMenu() {
  print('Seleccione una opción:');
  print('1. Agregar estudiante');
  print('2. Eliminar estudiante');
  print('3. Mostrar estudiantes');
  print('4. Buscar estudiante');
  print('5. Salir');
}