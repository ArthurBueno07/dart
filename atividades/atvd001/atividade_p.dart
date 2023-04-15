import 'dart:io';

void main() {
  // Ler os três valores inteiros e diferentes
  stdout.write("Digite o primeiro valor: ");
  int valor1 = int.parse(stdin.readLineSync()!);
  
  stdout.write("Digite o segundo valor: ");
  int valor2 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o terceiro valor: ");
  int valor3 = int.parse(stdin.readLineSync()!);

  // Ordenar os valores em ordem decrescente
  int maior, menor, medio;

  if (valor1 > valor2 && valor1 > valor3) {
    maior = valor1;
    if (valor2 > valor3) {
      medio = valor2;
      menor = valor3;
    } else {
      medio = valor3;
      menor = valor2;
    }
  } else if (valor2 > valor1 && valor2 > valor3) {
    maior = valor2;
    if (valor1 > valor3) {
      medio = valor1;
      menor = valor3;
    } else {
      medio = valor3;
      menor = valor1;
    }
  } else {
    maior = valor3;
    if (valor1 > valor2) {
      medio = valor1;
      menor = valor2;
    } else {
      medio = valor2;
      menor = valor1;
    }
  }

  // Exibir os valores em ordem decrescente
  print("$maior, $medio, $menor");
}
