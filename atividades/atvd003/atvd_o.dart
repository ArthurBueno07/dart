import 'dart:io';

void main() {
  //*Declarando lista
  List<String> frutas = [];

  bool sair = false;


  //*Estrutura de controle
  while (!sair) {
    print('''
    \n \t 1 - Adicionar uma fruta
    \t 2- Remover uma fruta
    \t sair - Sair do programa
''');

    stdout.write('Escolha uma opção: ');
    String opcao = (stdin.readLineSync()!);

    switch (opcao) {
      case '1':
        stdout.write('Qual fruta você deseja adicionar: '); //Mensagem para o usuario
        
        String fruta_add = (stdin.readLineSync()!); //Entrada de dados 
        
        frutas.add(fruta_add); //Método para adicionar um item a lista

        print('=' * 70);
        print('Fruta adicionada com sucesso!');

        //For in usado para iterar(repetir) sobre uma sequência
        for (String fruta_add in frutas) {
          stdout.write('$fruta_add ');
        }
        print('');
        print('-' * 70);
        break;

      case '2':
      //*Validação de lista vazia
       if (frutas.isEmpty) {
          print('-' * 70);
          print('A lista está vazia.');
          print('-' * 70);
          break;
        }

        print(frutas);

        stdout.write('Digite o índice que você deseja remover: ');
        int fruta_remove = int.parse(stdin.readLineSync()!);

        //*validação de índice
        //*length retorna a os índice da lista
        if (fruta_remove < 0 || fruta_remove >= frutas.length)   {
          print('-' * 70);
          print('Índice inválido!');
          print('-' * 70);
          break;
        }
        //*Metodo para remover um item da lista usando o índice
        frutas.removeAt(fruta_remove);

        print('=' * 70);
        print('Número removido com sucesso!');
        
        //For in usado para iterar(repetir) sobre uma sequência
        for (String fruta_remove in frutas) {
          stdout.write('$fruta_remove ');
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
