import 'dart:io';


int fatorial(int n) {
  if (n <= 1) {
    return 1; 
  } else {
    return n * fatorial(n - 1); 
  }
}

void main() {
  stdout.write('Digite um número inteiro positivo: ');
  String? input = stdin.readLineSync();
  int? numero = int.tryParse(input ?? '');

  if (numero != null && numero >= 0) {
    int resultado = fatorial(numero);
    print('O fatorial de $numero é $resultado.');
  } else {
    print('Por favor, insira um número inteiro positivo.');
  }
}