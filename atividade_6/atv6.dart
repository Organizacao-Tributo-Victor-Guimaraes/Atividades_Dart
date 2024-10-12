import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int numeroAleatorio = random.nextInt(100) + 1;
  int tentativas = 0;
  int? palpite;

  print('--- Jogo da Adivinhação ---');
  print('Tente adivinhar o número entre 1 e 100.');

  while (palpite != numeroAleatorio) {
    stdout.write('Digite o seu palpite: ');
    String? input = stdin.readLineSync();
    palpite = int.tryParse(input ?? '');

    if (palpite == null) {
      print('Por favor, digite um número válido.');
      continue;
    }

    tentativas++;

    if (palpite > numeroAleatorio) {
      print('O número correto é menor!');
    } else if (palpite < numeroAleatorio) {
      print('O número correto é maior!');
    } else {
      print('Parabéns! Você acertou o número $numeroAleatorio.');
      print('Você tentou $tentativas vez(es) para acertar.');
    }
  }
}