import 'dart:io';

void main(){
  
  int valor;
  int escolha;


  print('Seja bem vindo a calculadora de numeros romanos \n');
  print('O que deseja converter? \n');
  print('Digite 1 para converter inteiros para romanos');
  print('Digite 2 para converter romanos para inteiros');

  escolha = int.parse(stdin.readLineSync()!);

  if(escolha != 1 || escolha != 2){
    print('Opção invalida');
    return;
  }

  switch(escolha){
    case 1 :
    print('Digite o valor que deseja converter para romano');
    valor = int.parse(stdin.readLineSync()!);

    case 2 :
    print('Digite o valor que deseja converter para inteiro');
    valor = int.parse(stdin.readLineSync()!);
  }
}
