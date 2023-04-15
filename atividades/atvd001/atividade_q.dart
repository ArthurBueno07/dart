import 'dart:io';

void main() {
  stdout.write('Digite sua altura: ');

  double a = double.parse(stdin.readLineSync()!);

  stdout.write('Digite seu peso: ');

  double b = double.parse(stdin.readLineSync()!);

  double imc = b / (a * a);

  print('Seu índice de massa corporal é: ${imc.toStringAsFixed(3)} ');
}
