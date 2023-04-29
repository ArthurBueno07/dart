import 'dart:io';

void main() {
  Map<dynamic, String> listaTelefonica = {};

  bool sair = false;

  while (!sair) {
    print('Escolha uma opção:');
    print('1 - Inserir nome e telefone');
    print('2 - Exibir lista de nomes e telefones');
    print('0 - Sair');

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print('Digite o nome:');
        var nome = stdin.readLineSync();

        print('Digite o telefone:');
        var telefone = stdin.readLineSync();

        listaTelefonica.putIfAbsent('$nome:', () => telefone!);

        print('Pressione Enter para continuar ou digite "sair" para sair');
        var continuar = stdin.readLineSync();
        if (continuar == 'sair') {}
        break;

      case 2:
        print(listaTelefonica);

        print('Pressione Enter para continuar ou digite "sair" para sair');
        var continuar = stdin.readLineSync();
        if (continuar == 'sair') {}
        break;

      case 0:
        sair = true;
        print('Você saiu do programa! ');
        break;

      default:
        print('Opção inválida');
        break;
    }
  }
}
