import 'dart:io';

void main() {
  //Declarando lista
  List<String> itens = [];
  bool sair = false;

  while (!sair) {
    print('''
    \n \t 1 - Adicionar um item
    \t 2- Remover um item
    \t sair - Sair do programa
''');

    stdout.write('Escolha uma opção: '); //Mensagem para o usuario
    String opcao = (stdin.readLineSync()!); //Entrada de dados 

    switch (opcao) {
      case '1':
        stdout.write('Digite um item: ');
        String item_add = (stdin.readLineSync()!); //Entrada de dados 

        itens.add(item_add); //Método para adicionar um item a lista

        print('=' * 70);
        print('Item adicionado com sucesso!');
        //For in usado para iterar(repetir) sobre uma sequência
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

        stdout.write('Digite o índice que você deseja remover: ');  //Mensagem para o usuario
        int item_remove = int.parse(stdin.readLineSync()!); //int.parse -> casting //entrada de dados

        if (item_remove < 0 || item_remove >= itens.length) {
          print('-' * 70);
          print('Índice inválido!');
          print('-' * 70);
          break;
        }
        itens.removeAt(item_remove); //Metodo para remover um item da lista usando o índice

        print('=' * 70);
        print('Número removido com sucesso!');
        //For in usado para iterar(repetir) sobre uma sequência
        for (String item_remove in itens) {
          stdout.write('$item_remove ');
        }
        print('');
        print('-' * 70);
        break;

        case 'sair':
        sair = true;
        print('Programa encerrado! ');
        break;

      default:
      print('Opção invalida!');
      break;
      
    }
  }
}
