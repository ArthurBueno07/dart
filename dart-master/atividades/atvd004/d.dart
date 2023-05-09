import 'dart:io';

void main() {
  
  print('-' * 70);

  
  print('Exercício D: FOR E FOREACH');


  print('-' * 70);

  
  Map<String, double> nomes = {}; // Cria um Map vazio

  
  for (var i = 0; i < 5; i++) { // Loop para inserir 5 produtos
   
    stdout.write('Digite o nome do produto ${i + 1}: ');  // Pede para o usuário digitar o nome do produto
    String? nome = stdin.readLineSync()!; // Recebe a entrada
    print(nome);

    
    stdout.write('Digite o valor do produto ${i + 1}: '); // Pede para o usuário digitar o valor do produto
    double valor = double.parse(stdin.readLineSync()!); // Recebe a entrada e converte
    print(valor);

    // Adiciona o nome e valor do produto ao Map
    nomes.putIfAbsent(nome, () => valor);
  }

  
  print('-' * 70);

  
  print('${"Produtos"}     ${"Valores"}'); // Imprime o cabeçalho da tabela de produtos e valores

  
  nomes.forEach((nome, valor) { // Loop para imprimir os nomes e valores dos produtos
    
    print('$nome         RS:$valor'); // Imprime o nome do produto e o seu valor
  });
}
