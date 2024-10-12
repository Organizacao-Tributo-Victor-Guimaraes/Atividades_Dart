import 'dart:io';
import 'dart:math';


  bool confirmaNumeroPrimo (int n){
    if (n < 2) {
      return false;
    }

    for(int i = 2; i <=sqrt(n); i++){
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

void main(){
 print("digite o numero");

try{
int? n = int.tryParse(stdin.readLineSync() ?? '');
 if(n != null){
  print(" aqui está os numeros primos até $n:");
  for(int i = 2; i<= n; i++){
    if(confirmaNumeroPrimo(i)){
      print('$i');
    }
  }
 } else {
    throw FormatException('Entrada inválida, por favor digite um número inteiro.');

  }
} catch (e) {
   
    print(e);
  }
}