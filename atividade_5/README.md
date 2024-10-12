//Sistema de Tarefas (TODO List)
Sistema que utiliza da função de Lista do Dart para criar uma lista de tarefas interativa. Ele permite ao usuário adicionar, listar, marcar como concluída e remover tarefas. <br>
Possui uma classe chamada "Tarefa" que representa uma tarefa com título e status de conclusão. Com os métodos: <br> marcarComoConcluida(): marca a tarefa como concluída. <br> 
editarTitulo(): edita o título da tarefa. <br> 
toString(): retorna uma string formatada que exibe o título e o status de conclusão da tarefa. <br> 
Possui uma classe GerenciadorTarefas que mantém uma lista de objetos Tarefa. Com os métodos: <br>
adicionarTarefa(): adiciona uma nova tarefa à lista. <br>
listarTarefas(): exibe todas as tarefas no console. <br>
editarTarefa(): permite editar o título de uma tarefa específica. <br>
removerTarefa(): remove uma tarefa da lista com base no índice. <br>
marcarTarefaComoConcluida(): marca uma tarefa como concluída. <br>
A função main() é a função principal que faz o programa funcionar, o que ela faz: <br>
Um loop principal que exibe um menu para o usuário com as opções de gerenciamento de tarefas.
O usuário pode escolher entre as seguintes opções: <br>
Adicionar uma nova tarefa. <br>
Listar todas as tarefas. <br>
Editar uma tarefa existente. <br>
Remover uma tarefa. <br>
Marcar uma tarefa como concluída. <br>
Sair do programa. <br>
A interação é feita por meio da leitura de entradas do usuário com stdin.readLineSync().