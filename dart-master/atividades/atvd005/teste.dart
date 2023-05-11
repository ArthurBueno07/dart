import 'dart:io';

Map<String, dynamic> cadastros = {};

// Função void
cadastro(nome, cpf, telefone) {
  cadastros[nome] = {
    'CPF': cpf,
    'Telefone': telefone,
  };

  print('');
  print('Nome: $nome');
  print('=' * 70);
  print('CPF: $cpf');
  print('=' * 70);
  print('Telefone: $telefone');
  print('=' * 70);
  print('Você foi cadastrado!');
  print('');
}

// Função retorno
remover() {
  stdout.write('Qual usuário você deseja remover: ');
  dynamic nome_remove = stdin.readLineSync()!;

  cadastros.remove(nome_remove);

  print('=' * 70);
  print('Cadastro atualizado');
  print('=' * 70);
}

void main() {
  bool sair = false;

  while (!sair) {
    print('''
    1 - Para cadastrar usuário
    2 - Para exibir todos os cadastrados
    3 - Remover cadastro
    ''');

    stdout.write('Escolha uma opção: ');
    print('');
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        stdout.write('Digite seu nome: ');
        String nome = stdin.readLineSync()!;

        stdout.write('Digite seu CPF: ');
        int cpf = int.parse(stdin.readLineSync()!);

        stdout.write('Digite seu telefone: ');
        int telefone = int.parse(stdin.readLineSync()!);

        cadastro(nome, cpf, telefone);

        break;

      case 2:
        for (var cadastro in cadastros.entries) {
          print('${cadastro.key}: ${cadastro.value}');
          print('-' * 70);
        }

        break;

      case 3:
        remover();
        break;

      default:
        sair = true;
        break;
    }
  }
}
