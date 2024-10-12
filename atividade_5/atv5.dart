import 'dart:io';

class Tarefa {
  String titulo;
  bool concluida;

  Tarefa(this.titulo, {this.concluida = false});

  void marcarComoConcluida() {
    concluida = true;
  }

  void editarTitulo(String novoTitulo) {
    titulo = novoTitulo;
  }

  @override
  String toString() {
    return '$titulo - ${concluida ? "Concluída" : "Pendente"}';
  }
}

class GerenciadorTarefas {
  List<Tarefa> tarefas = [];

  void adicionarTarefa(String titulo) {
    tarefas.add(Tarefa(titulo));
    print('Tarefa "$titulo" adicionada com sucesso.');
  }

  void listarTarefas() {
    if (tarefas.isEmpty) {
      print('Nenhuma tarefa disponível.');
    } else {
      print('Lista de Tarefas:');
      for (int i = 0; i < tarefas.length; i++) {
        print('${i + 1}. ${tarefas[i]}');
      }
    }
  }

  void editarTarefa(int index, String novoTitulo) {
    if (index >= 0 && index < tarefas.length) {
      tarefas[index].editarTitulo(novoTitulo);
      print('Tarefa ${index + 1} atualizada para "$novoTitulo".');
    } else {
      print('Tarefa não encontrada.');
    }
  }

  void removerTarefa(int index) {
    if (index >= 0 && index < tarefas.length) {
      String tituloRemovido = tarefas[index].titulo;
      tarefas.removeAt(index);
      print('Tarefa "$tituloRemovido" removida com sucesso.');
    } else {
      print('Tarefa não encontrada.');
    }
  }

  void marcarTarefaComoConcluida(int index) {
    if (index >= 0 && index < tarefas.length) {
      tarefas[index].marcarComoConcluida();
      print('Tarefa "${tarefas[index].titulo}" marcada como concluída.');
    } else {
      print('Tarefa não encontrada.');
    }
  }
}

void main() {
  var gerenciador = GerenciadorTarefas();

  while (true) {
    print('\n--- Gerenciador de Tarefas ---');
    print('1. Adicionar tarefa');
    print('2. Listar tarefas');
    print('3. Editar tarefa');
    print('4. Remover tarefa');
    print('5. Marcar tarefa como concluída');
    print('6. Sair');
    stdout.write('Escolha uma opção: ');
    String? escolha = stdin.readLineSync();

    switch (escolha) {
      case '1':
        stdout.write('Digite o título da nova tarefa: ');
        String? titulo = stdin.readLineSync();
        if (titulo != null && titulo.isNotEmpty) {
          gerenciador.adicionarTarefa(titulo);
        } else {
          print('Título inválido.');
        }
        break;

      case '2':
        gerenciador.listarTarefas();
        break;

      case '3':
        gerenciador.listarTarefas();
        stdout.write('Digite o número da tarefa a ser editada: ');
        int? index = int.tryParse(stdin.readLineSync() ?? '');
        if (index != null && index > 0) {
          stdout.write('Digite o novo título da tarefa: ');
          String? novoTitulo = stdin.readLineSync();
          if (novoTitulo != null && novoTitulo.isNotEmpty) {
            gerenciador.editarTarefa(index - 1, novoTitulo);
          } else {
            print('Título inválido.');
          }
        } else {
          print('Número inválido.');
        }
        break;

      case '4':
        gerenciador.listarTarefas();
        stdout.write('Digite o número da tarefa a ser removida: ');
        int? index = int.tryParse(stdin.readLineSync() ?? '');
        if (index != null && index > 0) {
          gerenciador.removerTarefa(index - 1);
        } else {
          print('Número inválido.');
        }
        break;

      case '5':
        gerenciador.listarTarefas();
        stdout.write('Digite o número da tarefa a ser marcada como concluída: ');
        int? index = int.tryParse(stdin.readLineSync() ?? '');
        if (index != null && index > 0) {
          gerenciador.marcarTarefaComoConcluida(index - 1);
        } else {
          print('Número inválido.');
        }
        break;

      case '6':
        print('Encerrando o programa.');
        exit(0);

      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}