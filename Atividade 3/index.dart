import 'dart:io';

bool validarCpf(String cpf){

  cpf=cpf.replaceAll('.','').replaceAll('-','');

  if (cpf.length != 11) {
  return false;
}

if (cpf=='00000000000' || cpf=='11111111111' ||
    cpf=='22222222222' || cpf=='33333333333' ||
    cpf=='44444444444' || cpf=='55555555555' ||
    cpf=='66666666666' || cpf=='77777777777' ||
    cpf=='88888888888' || cpf=='00000000000'){
      return false; 
    }

int soma=0;
for (int i= 0;i <9; i++){
  soma += int.parse(cpf[i]) * (10 - i);
}

int resto=soma % 11;
int primeiroDigitoVerificador=(resto<2)? 0 : 11-resto;

if (primeiroDigitoVerificador != int.parse(cpf[9])){
  return false;
}

soma=0;
for (int i= 0;i <10; i++){
  soma += int.parse(cpf[i]) * (11 - i);
}

resto=soma % 11;
int segundoDigitoVerificador=(resto<2)? 0 : 11-resto;

return segundoDigitoVerificador==int.parse(cpf[10]);
}

void man(){
  print('digite o CPF desejado');
  String? cpf=stdin.readLineSync();

  if (cpf != null && cpf.isNotEmpty) {
    bool isValid = validarCpf(cpf);
    print('O CPF $cpf é ${isValid ? 'valido' : 'invalido'}.');
  } else {
    print('CPF invalido.');
  }
}