import 'dart:io';
import 'dart:math';

void main() {
  print('1 - Raíz quadrada');
  print('2 - Potencia');
  print('3 - Radianos');
  print('4 - Cosseno');
  print('5 - Tangente');
  print('6 - Logaritimo');
  print('7 - Maximo');
  print('8 - Minimo');
  print('');

  stdout.write('Digite a função desejada: ');

  int opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      stdout.write('Digite um número: ');
       //casting
      double x = double.parse(stdin.readLineSync()!);

      double raiz = sqrt(x);
      print('');
      print('A raiz quadrada de $x = $raiz');
      break;

    case 2:
      stdout.write('Digite um número: ');
      //casting
      double x = double.parse(stdin.readLineSync()!);

      stdout.write('Digite um expoente: ');
       //casting
      int exponent = int.parse(stdin.readLineSync()!);

      num potencia = pow(x, exponent);
      print('');

      print('A potencia de $x elevado a $exponent = $potencia');

      break;

    case 3:
      stdout.write('Digite um angulo: ');
       //casting
      double x = double.parse(stdin.readLineSync()!);

      num resul = sin(x);
      print('');

      print(resul);

      break;

    case 4:
      stdout.write('Digite um numero: ');

      double x = double.parse(stdin.readLineSync()!);

      num resul = cos(x);
      print('');

      print(resul);

      break;

    case 5:
      stdout.write('Digite um número: ');

      double x = double.parse(stdin.readLineSync()!);

      num resul = tan(x);
      print('');

      print(resul);

      break;

    case 6:
      stdout.write('Digite um número: ');

      double x = double.parse(stdin.readLineSync()!);

      num resul = log(x);
      print('');

      print(resul);

      break;

    case 7:
      stdout.write('Digite um número: ');

      double x = double.parse(stdin.readLineSync()!);

      stdout.write('Digite o segundo número: ');

      double y = double.parse(stdin.readLineSync()!);

      num resul = max(x, y);
print(''); 
      print(resul);

      break;

    case 8:
      stdout.write('Digite um número: ');

      double x = double.parse(stdin.readLineSync()!);

      stdout.write('Digite o segundo número: ');

      double y = double.parse(stdin.readLineSync()!);

      num resul = min(x, y);
      print('');
      print(resul);

      break;
  }
}
