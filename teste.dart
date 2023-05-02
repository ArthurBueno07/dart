// Importa a biblioteca dart:io, que contém classes para entrada e saída de dados.
import 'dart:io';

void main() {
  // Declara uma variável do tipo Map vazio, que será usada para armazenar os itens.
  Map<String, dynamic> itens = {};

  // Declara uma variável booleana que será usada para controlar o loop principal do programa.
  bool sair = false;

  // Inicia um loop while que será executado até que a variável sair seja verdadeira.
  while (!sair) {
    // Imprime mensagem para o usuario
    print('Selecione uma opção:');

    print('1 - Adicionar item');
    print('2 - Exibir todos os itens');
    print('3 - Buscar item por nome');
    print('4 - Atualizar item');
    print('5 - Remover item');
    print('6 - Sair');

    int opcao = int.parse(stdin
        .readLineSync()!); // Lê a entrada do usuário e converte para um inteiro.

    // Inicia um switch para receber a opção desejada
    switch (opcao) {
      // Caso a opção seja 1, solicita ao usuário que digite um nome e uma quantidade para o item,
      // e adiciona esses valores ao mapa de itens.
      case 1:
        stdout.write('Digite um nome para o item: ');
        print('');
        String nome = stdin.readLineSync()!;
        stdout.write('Digite a quantidade do item: ');
        print('');
        int quantidade = int.parse(stdin.readLineSync()!);
        itens.putIfAbsent(nome, () => quantidade);

        // stdout.write('Digite um endereço: ');
        // print('');
        // String end = stdin.readLineSync()!;

        // itens.putIfAbsent('Endereço', () => end);

        break;

      case 2:
        // Caso a opção seja 2, exibe todos os itens cadastrados no mapa.
        print('Itens cadastrados:');
        for (var item in itens.entries) {
        //  print('${'Itens'} : ${'Quantidade'}');
          print('${item.key}: ${item.value}');
          print('-' * 70);
        }
        break;

      case 3:
        // Caso a opção seja 3, solicita ao usuário que digite o nome de um item para buscar,
        // e exibe o item caso ele exista no mapa.
        stdout.write('Digite o nome do item que deseja buscar: ');
        String nome = stdin.readLineSync()!;
        Map.fromEntries(itens.entries.where((element) => element.key == nome));
        if (itens.containsKey(nome)) {
          for (var entrada in itens.entries) {
            print('-' * 70);
            print('${entrada.key}: ${entrada.value}');
            print('-' * 70);
          }
        } else {
          print('-' * 70);
          print('Item não encontrado.');
          print('-' * 70);
        }
        break;

      case 4:
        // Caso a opção seja 4, solicita ao usuário que digite o nome de um item para atualizar,
        // e atualiza a quantidade do item caso ele exista no mapa.
        stdout.write('Digite o nome do item que deseja atualizar: ');
        String nome = stdin.readLineSync()!;
        Map.fromEntries(itens.entries.where((element) => element.key == itens));
        if (itens.containsKey(nome)) {
          stdout.write('Digite a nova quantidade: ');
          int novaQuantidade = int.parse(stdin.readLineSync()!);
          itens[nome] = novaQuantidade;
          print('-' * 70);
          print('Quantidade atualizada com sucesso.');
          print('-' * 70);
        } else {
          print('-' * 70);
          print('Item não encontrado.');
          print('-' * 70);
        }
        break;

      case 5:
        // Caso a opção seja 5, solicita ao usuário que digite o nome de um item para remover,
        // e remove o item caso ele exista
        stdout.write('Digite o nome do item que deseja remover: ');
        String nome = stdin.readLineSync()!;
        Map.fromEntries(itens.entries.where((element) => element.key == itens));
        if (itens.containsKey(nome)) {
          itens.removeWhere((key, value) => key == nome);
          print('-' * 70);
          print('Item removido com sucesso.');
          print('-' * 70);
        } else {
          print('-' * 70);
          print('Item não encontrado.');
          print('-' * 70);
          break;
        }
        break;

      case 6:
        // Caso a opção seja 6 ele encerra o loop de while.
        sair = true;
        print('-' * 70);
        print('Saindo do programa...');
        print('-' * 70);
        break;

      default:
        // Caso o usuario escolha uma opção invalida.
        print('-' * 70);
        print('Opção inválida.');
        print('-' * 70);
        break;
    }
  }
}
