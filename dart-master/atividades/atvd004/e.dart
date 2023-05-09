import 'dart:io'; // importa a biblioteca 'dart:io'

void main() { // define a função principal do programa

  

  print('-' * 70); // imprime uma linha pontilhada separando o cabeçalho do programa
  print('Exercício E: FOR, FOREACH E REDUCE'); // imprime a mensagem do cabeçalho
  print('-' * 70); // imprime outra linha pontilhada

  Map<String, double> map = {}; // cria um mapa vazio para armazenar o nome e notas dos alunos

  stdout.write('Digite o nome do aluno: '); // imprime a mensagem para digitar o nome do aluno
  String? nome = stdin.readLineSync()!; // lê o nome do aluno digitado pelo usuário
  print(nome); // imprime o nome do aluno digitado

  for (var i = 0; i < 4; i++) { // inicia um loop para coletar as notas dos alunos
    stdout.write('Digite a nota ${i + 1} do aluno: '); // imprime a mensagem para digitar a nota
    double valor = double.parse(stdin.readLineSync()!); // lê a nota digitada pelo usuário e converte para double
    print(valor); // imprime a nota digitada pelo usuário

    map.putIfAbsent(nome, () => valor); // adiciona o nome e a nota do aluno ao mapa
  }

  print('-' * 70); // imprime uma linha pontilhada
  print(''); // imprime uma linha em branco

  map.forEach((nome, valor) { // percorre o mapa para calcular a média das notas de cada aluno

    double media = map.values.reduce((nome, valor) => (valor + valor + valor + valor) / 4) ; // calcula a média das notas

    print('Média do aluno'); // imprime a mensagem 'Média do aluno'
    print('$nome:    $media'); // imprime o nome e a média das notas do aluno
    print('-' * 70); // imprime uma linha pontilhada
    print('Fim do programa'); // imprime a mensagem 'Fim do programa'
    print('-' * 70); // imprime outra linha pontilhada
  });
}
