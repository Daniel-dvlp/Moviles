// Factorial sin recursividad 
import 'dart:io';


// Función para calcular el factorial de un número con recursividad 
/* int factorialRecursivo(int n) {
  if (n <= 1) return 1;
  return n * factorialRecursivo(n - 1);
} */


void main(){
  stdout.write('Ingrese un número para calcular su factorial: ');
  int numero = int.parse(stdin.readLineSync()!);

  //sin recursividad 
  int factorial = 1;
  for (int i=1; i <= numero; i++){
    factorial *= i;
  }
  
  print('El factorial de $numero es: $factorial'); 

/*   print('El factorial de $numero es: ${factorialRecursivo(numero)}'); */
}




