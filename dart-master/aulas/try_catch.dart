import 'dart:io';

void main() {
  try {
    stdout.write('Digite um número: ');
    var nm1 = double.parse(stdin.readLineSync()!);

    stdout.write('Digite o segundo número: ');
    var nm2 = double.parse(stdin.readLineSync()!);

    var resultado = dividir(nm1, nm2);
    print('O resultado da divisão é: $resultado');

    // É comun no lugar do 'exception' colocar 'e'
  } catch (e) {
    print('Ocorreu um erro: $e ');
  }
}

double dividir(double a, double b) {
  if (b == 0) {
    // Lançamento de exeção
    throw Exception('Divisão por zero não é permitida.');
  }
  return a / b;
}

