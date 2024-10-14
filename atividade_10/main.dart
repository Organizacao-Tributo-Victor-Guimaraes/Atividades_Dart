import 'dart:io';

Map<int, String> inteiroRomano = {
  1000: 'M',
  900: 'CM',
  500: 'D',
  400: 'CD',
  100: 'C',
  90: 'XC',
  50: 'L',
  40: 'XL',
  10: 'X',
  9: 'IX',
  5: 'V',
  4: 'IV',
  1: 'I'
};

Map<String, int> romanoInteiro = {
  'M': 1000,
  'CM': 900,
  'D': 500,
  'CD': 400,
  'C': 100,
  'XC': 90,
  'L': 50,
  'XL': 40,
  'X': 10,
  'IX': 9,
  'V': 5,
  'IV': 4,
  'I': 1,
};

void converteRomano(int inteiro) {
  if (inteiroRomano.containsKey(inteiro)) {
    print('O número $inteiro é representado por ${inteiroRomano[inteiro]}');
  } else {
    String resultado = '';
    inteiroRomano.forEach((valor, romano) {
      while (inteiro >= valor) {
        resultado += romano;
        inteiro -= valor;
      }
    });
    print('O número é representado por $resultado');
  }
}

void converteInteiro(String romano) {
  romano = romano.toUpperCase();
  int total = 0;
  int i = 0;

  while (i < romano.length) {
    if (i + 1 < romano.length &&
        romanoInteiro.containsKey(romano.substring(i, i + 2))) {
      total += romanoInteiro[romano.substring(i, i + 2)]!;
      i += 2;
    } else {
      total += romanoInteiro[romano[i]]!;
      i++;
    }
  }

  print('O número romano $romano é igual a $total');
}

void main() {
  int valori;
  String valorr;
  int escolha;

  print('Seja bem vindo ao conversor de números romanos \n');
  print('O que deseja converter? \n');
  print('Digite 1 para converter inteiros para romanos');
  print('Digite 2 para converter romanos para inteiros');

  escolha = int.parse(stdin.readLineSync()!);

  if (escolha != 1 && escolha != 2) {
    print('Opção inválida');
    return;
  }

  switch (escolha) {
    case 1:
      print('Digite o valor que deseja converter para romano');
      valori = int.parse(stdin.readLineSync()!);
      converteRomano(valori);
      break;

    case 2:
      print('Digite o valor que deseja converter para inteiro');
      valorr = stdin.readLineSync()!;
      converteInteiro(valorr);
      break;
  }
}
