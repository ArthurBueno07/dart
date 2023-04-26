import 'dart:io';

void main() {
  //Declarando lista
  List<int> pares = [];

  bool sair = false;

  while (!sair) {
    print('''
    \n \t 1 - Adicionar um número par
    \t 2- Remover um número par
    \t sair - Sair do programa
''');

    stdout.write('Escolha uma opção: '); //Mensagem para o usuario
    String opcao = (stdin.readLineSync()!); //Entrada de dados 

    switch (opcao) {
      case '1':
        stdout.write('Digite um item: '); //Mensagem para o usuario
        int par_add = int.parse(stdin.readLineSync()!); //int.parse -> casting //entrada de dados

        pares.add(par_add); //Método para adicionar um item a lista

        //*Validação de número par
        if(par_add % 2 == 0) {
          print('-'*70);
          print('Numero par adicionado com sucesso! ');
          print('-'*70);
        } else{
          print('-'*70);
          print('O número $par_add não é par!');
          print('-'*70);
          break;
        }

        print('=' * 70);
        //For in usado para iterar(repetir) sobre uma sequência
        for (int par_add in pares) {
          stdout.write('$par_add ');
        }
        print('');
        print('-' * 70);
        break;

        case '2':
        //*Validação de lista vazia
        if(pares.isEmpty){
           print('-' * 70);
          print('A lista está vazia.');
          print('-' * 70);
          break;
        }

        print(pares);

        stdout.write('Digite o índice que você deseja remover: '); //Mensagem para o usuario
        int par_remove = int.parse(stdin.readLineSync()!); //int.parse -> casting //entrada de dados

        //*Validação de índice
        if (par_remove < 0 || par_remove >= pares.length) {
          print('-' * 70);
          print('Índice inválido!');
          print('-' * 70);
          break;
        }
        
        pares.removeAt(par_remove); //Metodo para remover um item da lista usando o índice

        print('-'*70);
        print('');
        
        //For in usado para iterar(repetir) sobre uma sequência
        for(int par_remove in pares) {
        stdout.write('$par_remove ');
        }
        print('');
        print('-'*70);
        break;

        case 'sair':
        sair = true; 
        print('Fim do programa!');
        break;

        default:
        print('-'*70);
        print('Opção invalida!');
        print('-'*70);
        break;

    }
  }
}