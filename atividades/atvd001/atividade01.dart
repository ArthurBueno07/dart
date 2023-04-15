import 'dart:io';

void main() {
  print('1 - Atividade a');
  print('2 - Atividade b');
  print('3 - Atividade c');
  print('4 - Atividade d');
  print('5 - Atividade e');
  print('6 - Atividade f');
  print('7 - Atividade g');
  print('8 - Atividade h');
  print('9 - Atividade i');
  print('11 - Atividade k');
  print('12 - Atividade l');
  print('13 - Atividade m');
  print('14 - Atividade n');
  print('15 - Atividade o');
  print('16 - Atividade p');
  print('17 - Atividade q');
  print('18 - Atividade r');
  print('19 - Atividade s');
  print('');
  stdout.write("Digite a opção desejada: ");

  int opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    //Atividade a
    case 1:
      print('Olá mundo');
      print('');
      break;

    //Atividade b
    case 2:
      stdout.write("Digite o primeiro numero: ");

      int a = int.parse(stdin.readLineSync()!);
      print('');

      stdout.write("Digite o segundo numero: ");

      double b = double.parse(stdin.readLineSync()!);
      print('');

      double soma = a + b;

      double subtracao = a - b;

      double produto = a * b;

      double divisao = a / b;

      int divInteira = a ~/ b;

      double restoDivisao = a % b;

      print('A soma de $a + $b é igual a $soma');
      print('A subtração de $a - $b é igual a $subtracao');
      print('O produto de $a * $b é igual a $produto');
      print('A divisão de $a / $b é igual a $divisao');
      print('A divisão inteira de $a ~/ $b é igual a $divInteira');
      print('O resto da divisão de $a % $b é igaul a $restoDivisao');
      print('');
      break;

    case 3:
      int ano_atual = 2023;

      stdout.write("Digite o ano que você nasceu: ");

      int ano_nas = int.parse(stdin.readLineSync()!);

      int idade = ano_atual - ano_nas;

      print('A sua idade é: $idade');
      print('');
      break;

    case 4:
      stdout.write("Digite a nota do Lucas: ");

      double a = double.parse(stdin.readLineSync()!);
      print('');

      stdout.write("Digite a nota do Bryan: ");

      double b = double.parse(stdin.readLineSync()!);
      print('');

      stdout.write("Digite a nota do Arthur: ");

      double c = double.parse(stdin.readLineSync()!);
      print('');

      stdout.write("Digite a nota do Gabriel: ");

      double d = double.parse(stdin.readLineSync()!);
      print('');

      double media = a + b + c + d / 4;

      print('A média de notas é: $media');
      print('');
      break;

    case 5:
      stdout.write("Digite o primeiro numero: ");

      int a = int.parse(stdin.readLineSync()!);
      print('');

      stdout.write("Digite o segundo numero: ");

      double b = double.parse(stdin.readLineSync()!);
      print('');

      double divisao = a / b;

      print('O resultado é ${divisao.toStringAsFixed(4)}');
      print('');
      break;

    case 6:
      stdout.write("Digite qualquer numero numero: ");

      int a = int.parse(stdin.readLineSync()!);
      print('');

      int soma = a + 1;

      int subtracao = a - 1;

      print('O sucessor do numero $a é $soma ');

      print('O antecessor do numero $a é $subtracao ');
      print('');

      break;

    case 7:
      stdout.write("Digite qualquer numero: ");

      int a = int.parse(stdin.readLineSync()!);
      print('');

      int doblo = a * 2;

      int triplo = a * 3;

      print('O dobro do numero $a é $doblo ');

      print('O triplo do numero $a é $triplo ');

      break;

    case 8:
      stdout.write("Digite o centimetro para ser convertido em metros: ");

      double a = double.parse(stdin.readLineSync()!);
      print('');

      double convert = a * 100;

      print('$a cm convertido para metros é: $convert m');

      break;

    case 9:
      stdout.write('Deseja tabuada de qual número: ');

      int a = int.parse(stdin.readLineSync()!);

      int mult = a * 1;
      int mult2 = a * 2;
      int mult3 = a * 3;
      int mult4 = a * 4;
      int mult5 = a * 5;
      int mult6 = a * 6;
      int mult7 = a * 7;
      int mult8 = a * 8;
      int mult9 = a * 9;
      int mult10 = a * 10;

      print('$mult');
      print('$mult2');
      print('$mult3');
      print('$mult4');
      print('$mult5');
      print('$mult6');
      print('$mult7');
      print('$mult8');
      print('$mult9');
      print('$mult10');

      break;

    case 10:
      stdout.write('Digite quanros reais você quer converter: ');

      double a = double.parse(stdin.readLineSync()!);

      double euros = a / 5.50;

      double dolar = a / 4.90;

      double wons = a / 0.00030;

      print(
          '$a-Reais convertido para euro é $euros, para dolar $dolar e para wons $wons.');

      break;

    case 11:
      print(
          "Digite o tipo de objeto (1 - quadrado, 2 - retângulo, 3 - triângulo, 4 - círculo):");
      int tipo = int.parse(stdin.readLineSync()!);

      if (tipo == 1) {
        // Cálculo da área do quadrado
        print("Digite o lado do quadrado:");
        double lado = double.parse(stdin.readLineSync()!);
        double area = lado * lado;
        print("A área do quadrado é: $area");
      } else if (tipo == 2) {
        // Cálculo da área do retângulo
        print("Digite a base do retângulo:");
        double base = double.parse(stdin.readLineSync()!);
        print("Digite a altura do retângulo:");
        double altura = double.parse(stdin.readLineSync()!);
        double area = base * altura;
        print("A área do retângulo é: $area");
      } else if (tipo == 3) {
        // Cálculo da área do triângulo
        print("Digite a base do triângulo:");
        double base = double.parse(stdin.readLineSync()!);
        print("Digite a altura do triângulo:");
        double altura = double.parse(stdin.readLineSync()!);
        double area = (base * altura) / 2;
        print("A área do triângulo é: $area");
      } else if (tipo == 4) {
        // Cálculo da área do círculo
        print("Digite o raio do círculo:");
        double raio = double.parse(stdin.readLineSync()!);
        double area = 3.14159 * raio * raio;
        print("A área do círculo é: $area");
      } else {
        print("Tipo de objeto inválido.");
      }

      break;
    case 12:
      stdout.write('Digite qualquer numero: ');

      int numero = int.parse(stdin.readLineSync()!);

      int par_impar = numero ~/ 2;

      if (par_impar == 2) {
        print('Numero $par_impar par');
      } else {
        print('Numero $par_impar ímpar');
      }
  }
}
