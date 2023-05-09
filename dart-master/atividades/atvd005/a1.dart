import 'dart:io';

agendaTelefone(nome, numero) {
  print('-' * 70);
  print('Nome: $nome');
  print('=' * 70);
  print('Número: $numero');
  print('-' * 70);
  print('');
  print('.' * 70);
  print('Telefone adicionado com sucesso! ');
  print('.' * 70);
}

void main() {
  String? nome;
  int numero;

  Map<String, int> agenda = {};

  bool sair = false;

  while (!sair) {
    print('');
    print('''
    1 -  Para adicionar um número
    2 - Para remover
    3 - Para exibir agenda
    4 - Para sair
''');

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        stdout.write('Digite o nome: ');
        nome = (stdin.readLineSync()!);

        stdout.write('Digite o número: ');
        numero = int.parse(stdin.readLineSync()!);

        agenda.putIfAbsent(nome, () => numero);

        print('Nome adicionado com sucesso ');

        break;

      case 2:
        stdout.write('Qual nome deseja remover: ');
        nome = (stdin.readLineSync()!);

        agenda.remove(nome);

        print('Removido com sucesso! ');

        break;

      case 3:
        agendaTelefone(nome, numero):
        agenda.forEach((nome, numero) {
          print('-' * 70);
          print('Nome:$nome : Número:$numero ');
        });

        break;

      case 4:
        sair = true;
        print('Programa encerrado! ');

        break;

      default:
        print('Opção ínvalida ');
        break;
    }
  }
}
