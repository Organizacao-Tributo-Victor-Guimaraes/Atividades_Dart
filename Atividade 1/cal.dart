import 'dart:io';
void main (){
  print("digite um numero");
  String? input1 = stdin.readLineSync();
  double? num1 = double.tryParse(input1 ?? "");

  if (num1 == null){
  print("voce nao digitou um numero");
  return;
  }
 
 print("digite um operador (+, -, *, /):");
 String? operador = stdin.readLineSync();

  print("digite outro numero");
  String? input2 = stdin.readLineSync();
  double? num2 = double.tryParse(input2 ?? "");

  if (num2 == null){
  print("voce nao digitou um numero");
  return;
  }

    double? resultado;

  switch (operador) {
    case '+':
      resultado = num1 + num2;
      break;
    case '-':
      resultado = num1 - num2;
      break;
    case '*':
      resultado = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        resultado = num1 / num2;
      } else {
        print("Erro: nao e possivel fazer divisao por zero.");
        return;
      }
      break;
    default:
      print("Operador invalido.");
      return;
  }

  print("O resultado e: $resultado");
}
