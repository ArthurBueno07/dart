//Atividade para entregar
import 'dart:math';
import 'dart:io';

void main() {
  int dentroDoIntervalo = 0;
  int foraDoIntervalo = 0;
  print('''
1 - a formação de um triângulo
2 - numeros pares
3 - intervalo
4 - bissexto
5 - equação
6 - fatorial 
''');

  print('');

  stdout.write('Digite a opção desejada: ');
  //Casting
  int opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      while (true) {
        stdout.write('Digite um numero: ');
        int opcao = int.parse(stdin.readLineSync()!);

        stdout.write('Digite o segundo numero: ');
        int opcao1 = int.parse(stdin.readLineSync()!);

        stdout.write('Digite o terceiro numero: ');
        int opcao2 = int.parse(stdin.readLineSync()!);

        if (opcao + opcao1 <= opcao2 ||
            opcao2 + opcao <= opcao1 ||
            opcao1 + opcao2 <= opcao) {
          print('Não é um triangulo ');
        } else if (opcao > opcao1 && opcao2 > opcao1) {
          print('É um triangulo ');
        } else if (opcao1 > opcao && opcao2 > opcao) {
          print('É um triangulo ');
        } else if (opcao > opcao2 && opcao1 > opcao2) {
          print('É um triangulo ');
        } else if (opcao1 == opcao && opcao1 == opcao2) {
          print('É um triangulo ');
        }
        stdout.write('Deseja continuar? "S", se não aperte "E" ');
        String a = (stdin.readLineSync()!);

        if (a == 's' || a == 'S') {
          print('Ok');
        } else if (a == 'e' || a == 'E') {
          break;
        }
      }
      break;

    case 2:
      stdout.write('Digite um numero: ');
      int opcao = int.parse(stdin.readLineSync()!);

      stdout.write('Digite o segundo numero: ');
      int opcao1 = int.parse(stdin.readLineSync()!);

      // Loop
      for (int i = opcao; i <= opcao1; i++) {
        // Verifica se o número atual é par
        if (i % 2 == 0) {
          // Se for par, imprime o número
          print(i);
        }
      }
      break;

    case 3:
      for (int i = 1; i <= 10; i++) {
        stdout.write('Digite um numero : ');

        int a = int.parse(stdin.readLineSync()!);

        if (a >= 10 && a <= 20) {
          dentroDoIntervalo++;
        } else {
          foraDoIntervalo++;
        }
      }
      print("Números dentro do intervalo: $dentroDoIntervalo");
      print("Números fora do intervalo: $foraDoIntervalo");

      break;

    case 4:
      int ano;
      bool bissexto = false;

      while (true) {
        stdout.write("Digite um ano: ");
        String? entrada = stdin.readLineSync();
        if (entrada == null || int.tryParse(entrada) == null) {
          print("Ano inválido! Tente novamente.");
          continue;
        }
        ano = int.parse(entrada);
        if (ano <= 0) {
          print("O ano deve ser maior que zero! Tente novamente.");
          continue;
        }
        break;
      }

      if (ano % 4 == 0 && (ano % 100 != 0 || ano % 400 == 0)) {
        bissexto = true;
      }

      if (bissexto) {
        print("$ano é um ano bissexto.");
      } else {
        print("$ano não é um ano bissexto.");
      }
      break;

    case 5:
      double a = 1;
      double b = -6;
      double c = 5;

      double delta = b * b - 4 * a * c;
      double x1 = (-b + (delta > 0 ? sqrt(delta) : 0)) / (2 * a);
      double x2 = (-b - (delta > 0 ? sqrt(delta) : 0)) / (2 * a);

      if (x1 == 5 && x2 == 1 || x1 == 1 && x2 == 5) {
        print("As raízes são {5, 1}.");
      } else {
        print("As raízes não são {5, 1}.");
      }
      break;

    case 6:
      stdout.write("Digite um número: ");
      int? entrada = int.tryParse(stdin.readLineSync()!);

      if (entrada == null) {
        print("Entrada inválida! Digite um número inteiro positivo.");
        return;
      }

      int fatorial = 1;
      for (int i = entrada; i > 0; i--) {
        fatorial *= i;
      }

      print("$entrada = $fatorial");
      break;

    case 7:
      stdout.write('Digite uma letra: ');
      String letra = (stdin.readLineSync()!);

      switch (letra) {
        case 'a':
        print('É uma vogal')
        break;

        case 'e':
        print('É uma vogal')
        break;

        case 'i':
        print('É uma vogal')
        break;

        case 'o':
        print('É uma vogal')
        break;

        case 'u':
        print('É uma vogal')
        break;
        
      }
  }
}
