import 'dart:io';

void main() {
  List<int> numeros = [];

  String? opcao;

  while (opcao != 'sair') {
    print('''
    \n \t 1 - Adicionar um numero
    \t 2- Remover um numero
    \t sair - Sair do programa
''');

    stdout.write('Escolha uma opção: ');
    String opcao = (stdin.readLineSync()!);

    switch (opcao) {
      case '1':
        stdout.write('Digite um numero: ');
        int num_add = int.parse(stdin.readLineSync()!);

        numeros.add(num_add);

        print('=' * 70);
        print('Número adicionado com sucesso!');
        for (int num_add in numeros) {
          stdout.write('$num_add ');
        }
        print('');
        print('-' * 70);
        break;

      case '2':
        if (numeros.isEmpty) {
          print('-' * 70);
          print('A lista está vazia.');
          print('-' * 70);
          break;
        }

        print(numeros);

        stdout.write('Digite o índice que você deseja remover: ');
        int num_remove = int.parse(stdin.readLineSync()!);

        if (num_remove < 0 || num_remove >= numeros.length) {
          print('-' * 70);
          print('Índice inválido!');
          print('-' * 70);
        }
        numeros.removeAt(num_remove);

        print('=' * 70);
        print('Número removido com sucesso!');
        for (int num_remove in numeros) {
          stdout.write('$num_remove ');
        }
        print('');
        print('-' * 70);
        break;

      case 'sair':
        print('Programa encerrado ');
        return;

      default:
        print('=' * 70);
        print('Opção inválida!');
        print('=' * 70);
    }
  }
}
