import 'dart:io'; // importação da biblioteca 'dart:io' para entrada e saída de dados

void main() {
  int num = 1; // variável para contar o número do nome adicionado
  int num_2 = 0; // variável para ser usada como chave no Map

  Map<dynamic, String> nomes = {}; // criação do Map 'nomes'

  for (var i = 1; i <= 10; i++) { // laço de repetição para permitir até 10 nomes
    stdout.write('Digite o $numº nome (ou "sair" para finalizar): '); // exibe a mensagem solicitando o nome
    String nome_add = (stdin.readLineSync()!); // lê o nome digitado pelo usuário
    num++; // incrementa o número do nome
    num_2++; // incrementa a chave do Map


    if (nome_add == 'sair') { // verifica se o usuário digitou 'sair'
      print('-' * 70);
      print('Programa finalizado! ');
      print('-' * 70);
      break; // encerra o programa
    }


    nomes.putIfAbsent('numero $num_2', () => nome_add); // adiciona o nome digitado ao Map
  }
  
  print('-' * 70);
  print('Nome digitados: ');
  print('-'*70);
  nomes.forEach((b, num) { // exibe todos os nomes adicionados ao Map
    print('$b: $num');
  });
}
