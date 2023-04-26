import 'dart:io';

void main() {
  //Declarando lista
  List<String> listaNome = [];
  bool sair = false;

  print('-' * 70);
  print('Exercicio_K ');
  print('-' * 70);

  while (!sair) {
    print('''
    1 - Adicionar nome
    2- Remover nome 
    sair - Sair do programa
''');

    stdout.write('Escolha uma opção: '); //Mensagem para o usuario
    String opcao = (stdin.readLineSync()!); //Entrada de dados 

    switch (opcao) {
      case '1':
        stdout.write('Digite um nome: '); //Mensagem para o usuario
        var nome_insere = (stdin.readLineSync()!); //Entrada de dados 

        listaNome.add(nome_insere); //Método para adicionar um item a lista

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

        stdout.write('Digite o indice que você deseja remover: ');  //Mensagem para o usuario
        int nome_remove = int.parse(stdin.readLineSync()!); //int.parse -> casting //entrada de dados

        if (nome_remove < 0 || nome_remove >= listaNome.length) {
          print('-' * 70);
          print('Índice inválido!');
          print('-' * 70);
          break;
        }

        listaNome.removeAt(nome_remove); //Metodo para remover um item da lista usando o índice

        print('-' * 70);
        print(listaNome);
        print('');
        print('Nome removido com sucesso!');
        print('-' * 70);
        break;

      case 'sair':
        sair = true;
        print('-' * 70);
        print('Você saiu ');
        print('-' * 70);
        break;

      default:
        print('-' * 70);
        print('Opção invalida');
        print('-' * 70);

        break;
    }
   
  }
}
