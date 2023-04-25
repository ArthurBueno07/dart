import 'dart:io';

void main() {
  List<String> itens = [];

  String? opcao;

  while (opcao != 'sair') {
    print('''
    \n \t 1 - Adicionar um item
    \t 2- Remover um item
    \t sair - Sair do programa
''');

    stdout.write('Escolha uma opção: ');
    String opcao = (stdin.readLineSync()!);

    switch (opcao) {
      case '1':
        stdout.write('Digite um numero: ');
        String item_add = (stdin.readLineSync()!);

        itens.add(item_add);

        print('=' * 70);
        print('Item adicionado com sucesso!');
        for (String item_add in itens) {
          stdout.write('$item_add ');
        }
        print('');
        print('-' * 70);
        break;

      case '2':
       if (itens.isEmpty) {
          print('-' * 70);
          print('A lista está vazia.');
          print('-' * 70);
          break;
        }

        print(itens);

        stdout.write('Digite o índice que você deseja remover: ');
        int item_remove = int.parse(stdin.readLineSync()!);

        if (item_remove < 0 || item_remove >= itens.length) {
          print('-' * 70);
          print('Índice inválido!');
          print('-' * 70);
        }
        itens.removeAt(item_remove);

        print('=' * 70);
        print('Número removido com sucesso!');
        for (String item_remove in itens) {
          stdout.write('$item_remove ');
        }
        print('');
        print('-' * 70);
        break;

      default:
    }
  }
}
