import 'dart:io';

void main() {
  print('-' * 70);

  print('Exercício D: FOR E FOREACH');

  print('-' * 70);

  Map<String, double> nomes = {};

  for (var i = 0; i < 5; i++) {
    stdout.write('Digite o nome do produto ${i + 1}: ');
    String? nome = stdin.readLineSync()!;
    print(nome);
    stdout.write('Digite o valor do produto ${i + 1}: ');
    double valor = double.parse(stdin.readLineSync()!);
    print(valor);


    nomes.putIfAbsent(nome, () => valor);
  }

  print('-' * 70);
  print('${"Produtos"}     ${"Valores"}');
  nomes.forEach((nome, valor) {
    print('$nome         RS:$valor');    
  });
}
