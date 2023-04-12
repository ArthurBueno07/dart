import 'dart:io';

void main() {
  print('1 - Atividade a');
  print('2 - Atividade b');
  print('3 - Atividade c');
  print('4 - Atividade d');
  print('5 - Atividade e');
  print('6 - Atividade b');
  print('7 - Atividade b');
  print('');
  stdout.write("Digite a opção desejaada: ");

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
  }
}
