import 'dart:io';

void main() {
  print('1 - Maiuscula, minuscula e conta string ');
  print('2 - Retorna string ');
  print('3 - trim start(Onde começa a ler),(end onde termina de ler) ');
  print('4 - Split ');
  print('5 - replaceall');
  print('');
  print('');
  print('');

  stdout.write('Digite sua opção: ');

  int a = int.parse(stdin.readLineSync()!);

  int opcao = a;

  switch (opcao) {
    //length: retorna o comprimento da string
    //*toUpperCase(): retorna uma cópia da string em maiúsculas.
    /* toLowerCase(): retorna uma cópia da string em minúsculas.  
    */

    case 1:
      stdout.write('Digite uma frase: ');

      String frase = (stdin.readLineSync()!);

      int tamanhoString = frase.length;

      String fraseMaiuscula = frase.toLowerCase();
      String fraseMinuscula = frase.toUpperCase();

      print('-' * 70);
      print(frase);
      print('=' * 70);
      print('Tamanho da frase: $tamanhoString');
      print('Frase em maiúsculo: $fraseMaiuscula');
      print('Frase em minúsculo: $fraseMinuscula');
      print('-' * 70);

      break;

    case 2:
      //*trim(): retorna uma cópia da string sem espaços em branco no início e no
      //final.

      stdout.write('Digite uma frase: ');

      String frase = (stdin.readLineSync()!);

      String retornaString = frase.trim();

      print(retornaString);

      break;

    case 3:
      //substring(int start, [int? end]): retorna uma subcadeia da string,
      //começando no índice start e indo até o índice end
      //(ou até o final da string, se end for nulo).

      stdout.write('Digite uma frase: ');

      String frase = (stdin.readLineSync()!);

      var resul = frase.substring(1, 5);

      print(resul);

      break;

    case 4:
      //split(String pattern): retorna uma lista de strings quebrando a string
      //original em partes separadas pelo padrão especificado.

      stdout.write('Digite uma frase: ');

      String frase = (stdin.readLineSync()!);

      final resul = frase.split(' ');

      print(resul);

      break;

    case 5:
      //replaceAll(String from, String to): retorna uma cópia da string em que
      // todas as ocorrências de from são substituídas por to.

      stdout.write('Digite uma frase: ');

      String frase = (stdin.readLineSync()!);

      stdout.write('Digite uma frase: ');

      String frase2 = (stdin.readLineSync()!);

      String resul = frase.replaceAll(frase, frase2);

      print(resul);

      break;

    case 6:
      //contains(String other): retorna true se a string
      // contém a substring especificada.

      stdout.write('Digite uma frase: ');

      String frase = (stdin.readLineSync()!);

      stdout.write('String que você deseja achar: ');

      String frase2 = (stdin.readLineSync()!);

      var resul = frase.contains(frase2);

      print(resul);

      break;

    case 7:
      //startsWith(String other, [int index = 0]): retorna true se a string
      //começa com a substring especificada a partir do índice index.

      stdout.write('Digite uma frase: ');

      String frase = (stdin.readLineSync()!);

      stdout.write('Digite a palavra que você acha que começa:  ');

      String frase2 = (stdin.readLineSync()!);

      var resul = frase.startsWith(frase2);

      print(resul);

      break;

    case 8:
      //endsWith(String other): retorna true se a string
      //termina com a substring especificada

      stdout.write('Digite uma frase: ');

      String frase = (stdin.readLineSync()!);

      stdout.write('Digite a palavra que você acha que começa:  ');

      String frase2 = (stdin.readLineSync()!);

      var resul = frase.startsWith(frase2);

      print(resul);

      break;
  }
}
