import 'dart:io';

void main() {
  List<String> nomes = [];

  int num = 1;

  for (var i = 1; i <= 5; i++) {
    stdout.write('Digite $num° nome: ');
    String nome = (stdin.readLineSync()!);
    num++;

    nomes.add(nome);
  }

  nomes.forEach((a) => print(a));
  print('');

  stdout.write('Qual nome você deseja remover: ');
  String nomeRemover = (stdin.readLineSync()!);
  print('');

  nomes.remove(nomeRemover);
  nomes.forEach((b) => print(b));
}
