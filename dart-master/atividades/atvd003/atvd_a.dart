import 'dart:io';

void main() {
  List<int> listaNumeros = [];

  stdout.write('Adiciona um numero: ');
  int a = int.parse(stdin.readLineSync()!);

  stdout.write('Adiciona o segundo numero: ');
  int b = int.parse(stdin.readLineSync()!);

  stdout.write('Adiciona o terceiro numero: ');
  int c = int.parse(stdin.readLineSync()!);

  listaNumeros.add(a);
  listaNumeros.add(b);
  listaNumeros.add(c);

  listaNumeros.forEach((numero) => print(numero));

}
