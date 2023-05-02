import 'dart:io';

void main() {
  int num = 1;
  int num_2 = 0;

  Map<dynamic, String> nomes = {};

  for (var i = 1; i <= 10; i++) {
    stdout.write('Digite o $numº nome (ou "sair" para finalizar): ');
    String nome_add = (stdin.readLineSync()!);
    num++;
    num_2++;

    if (nome_add == 'sair') {
      print('-' * 70);
      print('Programa finalizado! ');
      print('-' * 70);
      break;
    }

    nomes.putIfAbsent('numero $num_2', () => nome_add);
  }
  print('-' * 70);
  print('Nome digitados: ');
  print('-'*70);
  nomes.forEach((b, num) {
    print('$b: $num');
  });
}
