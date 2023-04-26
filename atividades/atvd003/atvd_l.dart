import 'dart:io';

void main() {
  //Declarando a lista
  List<int> numeros = [];
  bool sair = false;

  while (!sair) {
    print('''
    \n \t 1 - Adicionar um numero
    \t 2- Remover um numero
    \t sair - Sair do programa
''');

    stdout.write('Escolha uma opção: ');
    String opcao = (stdin.readLineSync()!);

    switch (opcao) {
      case '1':
        stdout.write('Digite um numero: '); //Mensagem para o usuario
        int num_add = int.parse(stdin.readLineSync()!); //Entrada de dados 

        
        numeros.add(num_add); //Método para adicionar um item a lista

        print('=' * 70);
        print('Número adicionado com sucesso!');

        //For in usado para iterar(repetir) sobre uma sequência
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
        
        stdout.write('Digite o índice que você deseja remover: '); //mensagem para usuario
        int num_remove = int.parse(stdin.readLineSync()!); //int.parse -> casting //entrada de dados

        if (num_remove < 0 || num_remove >= numeros.length) {
          print('-' * 70);
          print('Índice inválido!');
          print('-' * 70);
          break;
        }
        numeros.removeAt(num_remove); //Metodo para remover um item da lista usando o índice

        print('=' * 70);
        print('Número removido com sucesso!');

        //For in usado para iterar(repetir) sobre uma sequência
        for (int num_remove in numeros) {
          stdout.write('$num_remove ');
        }
        print('');
        print('-' * 70);
        break;

      case 'sair':
        int soma = 0;
        for (int num_add in numeros) {
          soma += num_add;
        }
        print('=' * 70);
        print('A soma dos números é: $soma');
        print('=' * 70);
        sair = true;
        break;

      default:
        print('=' * 70);
        print('Opção inválida!');
        print('=' * 70);
    }
  }
}
