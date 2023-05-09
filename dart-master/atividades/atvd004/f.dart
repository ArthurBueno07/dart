import 'dart:io';

void main() {

  // Criação do Map com os estados e suas capitais
  Map<String, String> estadosECapitais = {
    'Piauí': 'Teresina',
    'Rio de Janeiro': 'Rio de Janeiro',
    'São Paulo': 'Sao Paulo'
  };

  var continuar = 'sim'; // define a variável 'continuar' com o valor 'sim' para iniciar o loop while

  while (continuar == 'sim') { // repete o loop enquanto a variável 'continuar' for igual a 'sim'

    for (var estado in estadosECapitais.keys) {

      stdout.write('Qual é a capital do $estado?\n');
      var resposta = stdin.readLineSync()!.toLowerCase(); // lê a resposta do usuário e converte para minúsculas

      if (resposta == estadosECapitais[estado]!.toLowerCase()) { // verifica se a resposta do usuário está correta
        print('Resposta correta! $resposta');
      } else {
        print('Resposta incorreta!');
      }
    }

    stdout.write('Deseja jogar novamente? (sim/não)\n');
    continuar = stdin.readLineSync()!.toLowerCase(); // lê a resposta do usuário e converte para minúsculas
  }

  print('FIM DO PROGRAMA!');
}
