import 'dart:io'; // importa a biblioteca padrão de entrada e saída de dados

void main(){

  int num = 1; // contador para exibir o número correspondente ao dado a ser digitado
  int num_2 = 0; // contador para numerar cada elemento do Map

  Map<dynamic, int> a = {}; // declaração do mapa, semelhante a um dicionário

  for (var i = 1; i <= 10; i++) { // loop para solicitar 10 números
    stdout.write('Digite o $num° número inteiro: '); // exibe mensagem para digitar um número
    
    int numero = int.parse(stdin.readLineSync()!); // lê a entrada do usuário e armazena o número digitado
    num++; // incrementa o contador de número correspondente ao dado a ser digitado
    num_2++; // incrementa o contador que numerará cada elemento do Map
    a.putIfAbsent('numero $num_2', () => numero); // adiciona o número digitado ao mapa, com a chave 'numero' seguido do contador
  }


  print('-'*70); 
  print('Números digitados: '); // exibe mensagem informando que serão exibidos os números digitados
  print('');
  a.forEach((b, num){ // loop para exibir cada elemento do mapa
    print('$b: $num'); // exibe a chave (número) e o valor armazenado no mapa
  });
}
