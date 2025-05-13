import 'dart:io';

void main() {
  stdout.write('Cuantas secuencias del fionacci desea ver: ');
  int n = int.parse(stdin.readLineSync()!);

  int a = 0;
  int b = 1;

   print("\nSerie de Fibonacci de $n términos:");

  for (int i = 0; i < n; i++) {
    print(a);
    int siguiente = a + b;
    a = b;
    b = siguiente;
  }

}