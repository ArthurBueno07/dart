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
dynamic remover(dados, Map cadastros) {
  stdout.write('Qual usuário você deseja remover: ');
  dynamic nome_remove = stdin.readLineSync()!;

  cadastros.remove(nome_remove);

  print('=' * 70);
  print('Cadastro atualizado');
  print('=' * 70);

  return dados;
}

// Função com Parametro
consultarNome(Map<String, dynamic> cadastros, {String? nome_consultar}) {
  if (nome_consultar == null) {
    print('');
    stdout.write('Digite o nome do usuário que deseja buscar: ');
    print('');
    nome_consultar = stdin.readLineSync();
  }

  if (cadastros.containsKey(nome_consultar)) {
    return cadastros[nome_consultar];
  } else {
    return null;
  }
}

//Função anonima
contaUsuario() {
  if (cadastros.isEmpty) {
    print('Nenhum aluno cadastrado!');
  } else {
    print('\nDados cadastrados de todos os alunos:');
    int quantidade = 0;
    cadastros.forEach((chave, valor) {
      quantidade += 1;
      print('$quantidade - $chave: $valor');
    });
    print('');
    print('Quantidade total de alunos cadastrados: $quantidade');
    print('');
  }
}

void main() {
  var dados;
  bool sair = false;

  while (!sair) {
    print('''
    1 - Para cadastrar usuário
    2 - Para exibir todos os cadastrados
    3 - Remover cadastro
    4 - Buscar usuario
    0 - Sair do programa
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

        contaUsuario();

        break;

      case 3:
        remover(dados, cadastros);
        break;

      case 4:
        if (cadastros.isEmpty) {
          print('');
          print('Não contem nenhum Usuario! ');
          print('');
          break;
        }
        dynamic usuarioEncontrado = consultarNome(cadastros);
        if (usuarioEncontrado != null) {
          print('');
          print('Usuário encontrado: $usuarioEncontrado');
          print('');
        } else {
          print('Usuário não encontrado.');
        }

        break;
      case 0:
        sair = true;
        print('''
⠀⠀⠀⠀⢀⣠⠤⡶⣲⢺⣴⣶⢭⣉⢲⣀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢀⡾⢵⣶⣿⣿⣿⣾⣷⣳⣿⣷⣵⣈⠷⢤⡀⠀⠀⠀⠀⠀
⠀⠀⠘⢾⣿⡿⠿⠿⠿⠿⠿⠿⢿⡿⣿⣿⣿⣾⣾⣦⠀⠀⠀⠀
⠀⠀⣠⡋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⢿⢿⣧⠀⠀⠀
⠀⣰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣳⢮⣧⠀⠀
⢠⣧⠇⡠⠄⣤⣤⣄⡀⠀⠀⣀⣤⣄⣤⣀⠀⠀⣿⣿⣿⣯⣇⠀
⠈⣿⠀⢀⣶⣾⣿⣿⠁⠀⢸⣿⣿⣿⣧⣌⣥⠀⠘⣿⣿⣿⣿⠀
⢀⣿⠀⠈⠁⠀⠀⠁⠀⠀⠀⠉⠉⠭⠽⠿⠻⠁⠀⣿⣿⣿⡏⠀
⡏⠆⠀⠀⠀⠀⠀⠀⡀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠟⢋⣿⣆
⡎⠀⠀⢀⡴⠂⠈⠉⠻⠿⠿⠛⣀⢲⣤⣄⣀⠀⠀⠈⠘⣏⢹⡿
⠱⡄⠘⢻⣳⣤⡶⠖⠒⠶⠶⢶⣿⣷⣿⣿⣿⣟⠀⠀⠄⠠⣰⠃
⠀⢹⠀⠀⠀⠈⠓⠒⠒⠒⠒⠒⠛⠁⢨⣼⣿⣿⡀⣼⠖⠛⠁⠀
⠀⠘⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⢁⠀⠀⠀⠀⠀
⠀⠀⢸⠀⠀⠀⢀⣀⣀⣀⣠⣤⣶⣿⣿⣿⡿⣁⡎⢸⠀⠀⠀⠀
⠀⠀⢸⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠸⠀⠀⠀⠀
⠀⠀⢸⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿::::⣿⡄⠀⡇
⠀⢀⣼⠀⠀⠀⠀⠀⠈⢹⣿⣿⣿⡟⣿⣿⣿⣟⡁⠀⢿⣷⡄⠀
⠀⣸⣿⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣝⣿⣿⡍⠁⠀⢸⣿⣷⠀
⠀⣿⣿⡀⠀⠀⠀⠀⠀⢐⣿⣿⣿⣿⣿⣿⣯⠁⠀⠀⢸⣿⣿⠀
⠀⢿⢿⣿⣄⠀⠀⠀⠀⢼⣿⣿⣿⣿⣿⣿⡯⠀⢠⢒⣿⣿⡏⠀
⠀⠈⢮⡻⣿⣷⣀⠀⢀⢸⣿⣿⣟⣿⣿⠿⠒⣀⣤⣿⣿⠏⠀⠀
⠀⠀⠀⠙⠺⣿⣿⣿⣾⣾⣿⣭⣭⣭⣷⣾⣿⣿⣿⠟⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠉⠛⠻⠿⠿⠿⠿⠿⠿⠟⠛⠉⠁⠀⠀⠀⠀⠀
​​
⚫ SIIIIIIIIIIIIIR VOCÊ SAIU DO PROGRAMA! ​​⚫
''');
        break;

      default:
        print('Opção ínvalida! ');
        break;
    }
  }
}
