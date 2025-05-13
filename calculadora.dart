import 'dart:io';

// Función para obtener número del usuario
double getNumber(String mensaje) {
  stdout.write(mensaje);
  return double.parse(stdin.readLineSync()!);
}

// Función para mostrar el menú
void mostrarMenu() {
  print('\nOperaciones disponibles:');
  print('1. Suma (+)');
  print('2. Resta (-)');
  print('3. Multiplicación (*)');
  print('4. División (/)');
}

// Funciones para operaciones básicas
double suma(double a, double b) => a + b;
double resta(double a, double b) => a - b;
double multiplicacion(double a, double b) => a * b;
double division(double a, double b) {
  if (b == 0) throw Exception('No se puede dividir por cero');
  return a / b;
}

// Función para realizar la operación seleccionada
void realizarOperacion(String operacion, double num1, double num2) {
  try {
    switch(operacion) {
      case '1':
        print('\n$num1 + $num2 = ${suma(num1, num2)}');
        break;
      
      case '2':
        print('\n$num1 - $num2 = ${resta(num1, num2)}');
        break;
      
      case '3':
        print('\n$num1 * $num2 = ${multiplicacion(num1, num2)}');
        break;
      
      case '4':
        try {
          print('\n$num1 / $num2 = ${division(num1, num2)}');
        } catch (e) {
          print('\nError: No se puede dividir por cero');
        }
        break;
      
      default:
        print('\nOperación no válida');
        break;
    }
  } catch (e) {
    print('\nError: $e');
  }
}

void main() {
  print('=== Calculadora Básica ===');
  
  // Obtener números del usuario
  double num1 = getNumber('Ingrese el primer número: ');
  double num2 = getNumber('Ingrese el segundo número: ');
  
  // Mostrar menú y obtener operación
  mostrarMenu();
  stdout.write('\nSeleccione la operación (1-4): ');
  String operacion = stdin.readLineSync()!;
  
  // Realizar la operación seleccionada
  realizarOperacion(operacion, num1, num2);
}