import 'dart:io';

double getNumber(String mensaje) {
  stdout.write(mensaje);
  return double.parse(stdin.readLineSync()!);
}

String getString(String mensaje) {
  stdout.write(mensaje);
  return stdin.readLineSync()!;
}


double calcularPropina(double total, double porcentaje) {
  return total * (porcentaje / 100);
}

double calcularTotalConPropina(double total, double propina) {
  return total + propina;
}

double dividirCuenta(double total, int personas) {
  if (personas <= 0) throw Exception('El número de personas debe ser mayor que cero');
  return total / personas;
}

void main() {
  print('Bienvenido a la calculadora de propinas!');
  String nombre = getString('Ingrese su nombre: ');
  double totalCuenta = getNumber('\n!Hola $nombre, Ingrese el total de la cuenta: ');
  double porcentajePropina = getNumber('$nombre, Ingrese el porcentaje de propina: ');
  double propina = calcularPropina(totalCuenta, porcentajePropina);
  double totalConPropina = calcularTotalConPropina(totalCuenta, propina);
  int personas = getNumber('$nombre, ¿Cuántas personas van a pagar la cuenta? ').toInt();
  double cuentaPorPersona = dividirCuenta(totalConPropina, personas);
  print('\nDetalles de la cuenta:');
  print('$nombre, El total de la cuenta es: \$${totalCuenta.toStringAsFixed(2)}');
  print('Propina (${porcentajePropina.toStringAsFixed(2)}%): \$${propina.toStringAsFixed(2)}');
  print('Total con propina: \$${totalConPropina.toStringAsFixed(2)}');
  print('Total por persona: \$${cuentaPorPersona.toStringAsFixed(2)}');
}

