import 'dart:io';

void main() {
  List<String> listaNome = [];
  String? opcao;

  print('-' * 70);
  print('Exercicio_K ');
  print('-' * 70);

  while (opcao != 'sair') {
    print('''
    1 - Adicionar nome
    2- Remover nome 
    sair - Sair do programa
''');

    stdout.write('Escolha uma opção: ');
    String opcao = (stdin.readLineSync()!);

    switch (opcao) {
      case '1':
        stdout.write('Digite um nome: ');
        var nome_insere = (stdin.readLineSync()!);

        listaNome.add(nome_insere);

        print('Nome adicionado com sucesso!');
        print('');

        break;

      case '2':
        if (listaNome.isEmpty) {
          print('-' * 70);
          print('A lista está vazia.');
          print('-' * 70);
          break;
        }

        print(listaNome);

        stdout.write('Digite o indice que você deseja remover: ');
        int nome_remove = int.parse(stdin.readLineSync()!);

        if (nome_remove < 0 || nome_remove >= listaNome.length) {
          print('-' * 70);
          print('Índice inválido!');
          print('-' * 70);
          break;
        }

        listaNome.removeAt(nome_remove);

        print('-' * 70);
        print(listaNome);
        print('');
        print('Nome removido com sucesso!');
        print('-' * 70);
        break;

      case 'sair':
        print('-' * 70);
        print('Você saiu ');
        print('-' * 70);
        return;

      default:
        print('-' * 70);
        print('Opção invalida');
        print('-' * 70);

        break;
    }
  }
}
