import 'dart:io';

void main() {
  var numeros = [1, 2, 3, 4, 5, 6, 7];
  var letras = ['a', 'b', 'c', 'd', 'e'];

  //ForEach
  print('=' * 70);

  numeros.forEach((numero) => print(numero));
  // (numero): função anônima (mais a frente no curso)
  // => Arrow function: simboliza retorno do resulta seguinte

  print('=' * 70);

  //e: pode ser qualquer coisa
  letras.forEach((e) => stdout.write('$e '));

  

  print('');
  print('=' * 70);
}
