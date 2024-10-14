import 'dart:io'; 

class Contato {
  String nome;
  String telefone;
  String email;

  Contato(this.nome, this.telefone, this.email);

  @override
  String toString() {
    return 'Nome: $nome, Telefone: $telefone, E-mail: $email';
  }
}

void main() {
  List<Contato> agenda = [];

  while (true) {
    print('\n--- Menu da Agenda ---');
    print('1. Adicionar contato');
    print('2. Listar contatos');
    print('3. Editar contato');
    print('4. Excluir contato');
    print('5. Sair');
    stdout.write('Escolha uma opção: ');
    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        adicionarContato(agenda); 
        break;
      case '2':
        listarContatos(agenda); 
        break;
      case '3':
        editarContato(agenda);
        break;
      case '4':
        excluirContato(agenda); 
        break;
      case '5':
        print('Saindo...');
        return; 
      default:
        print('Opção inválida, tente novamente.');
    }
  }
}

void adicionarContato(List<Contato> agenda) {
  stdout.write('Digite o nome do contato: ');
  String? nome = stdin.readLineSync(); 

  stdout.write('Digite o telefone do contato: ');
  String? telefone = stdin.readLineSync(); 

  stdout.write('Digite o e-mail do contato: ');
  String? email = stdin.readLineSync();

  if (nome != null && telefone != null && email != null) {
    Contato contato = Contato(nome, telefone, email);
    agenda.add(contato);
    print('Contato adicionado com sucesso!');
  } else {
    print('Erro ao adicionar contato.');
  }
}

void listarContatos(List<Contato> agenda) {
  if (agenda.isEmpty) {
    print('A agenda está vazia.'); 
  } else {
    print('\n--- Lista de Contatos ---');
    for (int i = 0; i < agenda.length; i++) {
      print('${i + 1}. ${agenda[i]}'); 
    }
  }
}

void editarContato(List<Contato> agenda) {
  listarContatos(agenda); 

  stdout.write('Digite o número do contato que deseja editar: ');
  String? input = stdin.readLineSync(); 
  int? index = int.tryParse(input ?? ''); 

  if (index != null && index > 0 && index <= agenda.length) {
    Contato contato = agenda[index - 1]; 

    stdout.write('Digite o novo nome (atual: ${contato.nome}): ');
    String? novoNome = stdin.readLineSync();
    if (novoNome != null && novoNome.isNotEmpty) {
      contato.nome = novoNome; 
    }

    stdout.write('Digite o novo telefone (atual: ${contato.telefone}): ');
    String? novoTelefone = stdin.readLineSync();
    if (novoTelefone != null && novoTelefone.isNotEmpty) {
      contato.telefone = novoTelefone;
    }

    stdout.write('Digite o novo e-mail (atual: ${contato.email}): ');
    String? novoEmail = stdin.readLineSync();
    if (novoEmail != null && novoEmail.isNotEmpty) {
      contato.email = novoEmail;
    }

    print('Contato atualizado com sucesso!');
  } else {
    print('Contato inválido.');
  }
}

void excluirContato(List<Contato> agenda) {
  listarContatos(agenda); 

  stdout.write('Digite o número do contato que deseja excluir: ');
  String? input = stdin.readLineSync(); 
  int? index = int.tryParse(input ?? ''); 

  if (index != null && index > 0 && index <= agenda.length) {
    agenda.removeAt(index - 1); 
    print('Contato excluído com sucesso!');
  } else {
    print('Contato inválido.');
  }
}
