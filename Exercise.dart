import 'dart:io';


bool esPrimo(int numero) {
  if (numero <= 1) return false;
  if (numero == 2) return true;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}

void main() {
  List<int> numbers = [];

  stdout.write('¿Cuántos números vas a ingresar?: ');
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write('Ingrese el número ${i + 1}: ');
    int numero = int.parse(stdin.readLineSync()!);
    numbers.add(numero);
    print('Número agregado correctamente.');
  }

  print('\n✅ Los números ingresados son: $numbers\n');

  print('🔎 Verificando cuáles son primos:\n');
  for (int numero in numbers) {
    if (esPrimo(numero)) {
      print('$numero es primo.');
    } else {
      print('$numero no es primo.');
    }
  }
}
