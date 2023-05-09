import 'dart:io';

void main() {
  Map<dynamic, String> listaTelefonica = {}; //Declara Map vazio

  bool sair = false; // Variavel que vai usada para controlar while

  while (!sair) { // Inicia loop While
    
    print('Escolha uma opção:'); // Mensagem para o usuario
    print('1 - Inserir nome e telefone');
    print('2 - Exibir lista de nomes e telefones');
    print('0 - Sair');

    int opcao = int.parse(stdin.readLineSync()!); //Recebe entrada do usuario

    switch (opcao) {
      case 1:
        while (!sair) {
          print('Digite o nome:'); // Mensagem para o usuario
          var nome = stdin.readLineSync(); //Recebe entrada do usuario

          print('Digite o telefone:'); // Mensagem para o usuario
          var telefone = stdin.readLineSync(); //Recebe entrada do usuario

          listaTelefonica.putIfAbsent('$nome', () => telefone!); // Adiciona nome e telefone dentro do map

         print('Pressione Enter para continuar ou digite "sair" para sair'); // Mensagem para o usuario
         var continuar = stdin.readLineSync(); //Recebe entrada do usuario
         if (continuar == 'sair') {}
        
        }
        break;

      case 2:
        print(listaTelefonica);

        print(
            'Pressione Enter para continuar ou digite "sair" para sair'); // Mensagem para o usuario
        var continuar = stdin.readLineSync(); //Recebe entrada do usuario
        if (continuar == 'sair') {}
        break;

      case 0:
        sair = true; // Caso sair seja verdadeiro, o programa é encerrado
        print('Você saiu do programa! '); // Mensagem para o usuario
        break;

      default:
        print('Opção inválida'); // Mensagem para o usuario
        break;
    }
  }
}
