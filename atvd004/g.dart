import 'dart:io';

void main() {
  Map<dynamic, dynamic> nomes = {};

  int i = 0;

  // ignore: unused_local_variable
  bool sair = false;

  print('''1 - Adicionar item
2 - Exibir todos os itens
3 - Buscar item por nome
4 - Atualizar item
5 - Remover item
6 - Sair
''');

  int opcao = int.parse(stdin.readLineSync()!);

  while (i < 1) {
    switch (opcao) {
      case 1:
        stdout.write('Digite um nome: ');
        String nome_add = (stdin.readLineSync()!);

        stdout.write('Digite a idade: ');
        int idade_add = int.parse(stdin.readLineSync()!);

        nomes.putIfAbsent(nome_add, () => idade_add);

        stdout.write('Digite seu endereço: ');
        String endereco = (stdin.readLineSync()!);

        nomes.putIfAbsent('Endereço ', () => endereco);

        break;

      case 2:
        print(nomes);

        break;

      default:
    }
  }
}
