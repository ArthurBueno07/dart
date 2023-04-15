//Atividade para entregar
import 'dart:io';

void main() {
  print('1 - a formação de um triângulo');

  stdout.write('Digite a opção desejada: ');
  int opcao = int.parse(stdin.readLineSync()!); //Casting

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
  }
}
