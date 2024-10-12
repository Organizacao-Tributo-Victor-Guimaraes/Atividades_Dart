import 'dart:io';

void criaarquivo(String nomeArquivo){
  final arquivo = File(nomeArquivo);
  print("Digite o texto desejado para gravar o arquivo (digite 'sair' para terminar):");

  List<String> texto = <String>[];
  while (true){
    String? linha = stdin.readLineSync();
    if(linha == null || linha.toLowerCase() == 'sair') {
      break;
    }
    texto.add(linha);
  }

  arquivo.writeAsStringSync(texto.join('\n'));
}

void lerarquivo(String nomeArquivo) {
  final File arquivo = File(nomeArquivo);

  if (arquivo.existsSync()) {
    String conteudoArquivo = arquivo.readAsStringSync();
    print("Seu texto:");
    print(conteudoArquivo);
  } else {
    print("O arquivo $nomeArquivo não existe");
  }
}

void main(){
  const String nomeArquivo = 'meu_texto.txt';
  criaarquivo(nomeArquivo);
  lerarquivo(nomeArquivo);
}