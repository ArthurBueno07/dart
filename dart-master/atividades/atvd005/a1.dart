// Importando a biblioteca dart:io para ter acesso às funções de entrada e saída padrão.
import 'dart:io';

// Criação de um Map que armazena os dados dos usuários cadastrados.
Map<String, dynamic> cadastros = {};

// Função que realiza o cadastro de um usuário.
void cadastro(nome, cpf, telefone) {
  // Adicionando os dados do usuário ao Map.
  cadastros[nome] = {
    'CPF': cpf,
    'Telefone': telefone,
  };

  // Exibindo as informações do usuário cadastrado.
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

// Função que realiza a remoção de um usuário cadastrado.
dynamic remover(dados, Map cadastros) {
  // Solicitando o nome do usuário a ser removido.
  stdout.write('Qual usuário você deseja remover: ');
  dynamic nome_remove = stdin.readLineSync()!;

  // Removendo o usuário do Map.
  cadastros.remove(nome_remove);

  // Exibindo a mensagem de cadastro atualizado.
  print('=' * 70);
  print('Cadastro atualizado');
  print('=' * 70);

  // Retornando os dados atualizados.
  return dados;
}

// Função que realiza a consulta de um usuário pelo nome.
consultarNome(Map<String, dynamic> cadastros, {String? nome_consultar}) {
  // Verificando se o nome do usuário foi informado como parâmetro.
  if (nome_consultar == null) {
    // Solicitando o nome do usuário a ser consultado.
    print('');
    stdout.write('Digite o nome do usuário que deseja buscar: ');
    print('');
    nome_consultar = stdin.readLineSync();
  }

  // Verificando se o usuário existe no Map.
  if (cadastros.containsKey(nome_consultar)) {
    // Retornando os dados do usuário encontrado.
    return cadastros[nome_consultar];
  } else {
    // Retornando null caso o usuário não exista.
    return null;
  }
}

// Função anônima que exibe as informações de todos os usuários cadastrados.
contaUsuario() {
  // Verificando se o Map está vazio.
  if (cadastros.isEmpty) {
    print('Nenhum usuário cadastrado!');
  } else {
    // Exibindo as informações de todos os usuários cadastrados.
    print('\nDados cadastrados de todos os usuários:');
    int quantidade = 0;
    cadastros.forEach((chave, valor) {
      quantidade += 1;
      print('$quantidade - $chave: $valor');
      print('-' * 70);
    });
    print('');
    print('Quantidade total de cadastros: $quantidade');
    print('');
  }
}

// Função principal que controla o fluxo do programa.
void main() {
  // Declaração de variáveis.
  var dados;
  bool sair = false;

  // Loop principal do programa.
  while (!sair) {
    // Exibindo o menu de opções.
    print('''
    1 - Para cadastrar usuário
    2 - Para exibir todos os cadastrados
    3 - Remover cadastro
    4 - Buscar usuário
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

        // Chama a função de cadastro para adicionar o usuário ao Map.
        cadastro(nome, cpf, telefone);

        break;

      case 2:
        // Chama a função para exibir todos os usuários cadastrados.
        contaUsuario();

        break;

      case 3:
        // Chama a função de remoção passando o Map de cadastros.
        remover(dados, cadastros);
        break;

      case 4:
        if (cadastros.isEmpty) {
          print('');
          print('Não contém nenhum usuário! ');
          print('');
          break;
        }
        // Chama a função de consulta de usuário passando o Map de cadastros.
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

⚫ SIIIIIIIIIIIIIR VOCÊ SAIU DO PROGRAMA! ​​⚫
''');
        break;

      default:
        print('');
        print('-' * 70);
        print(' ⚠️   ⚠️   ⚠️   OPÇÃO INVALIDA!   ⚠️   ⚠️   ⚠️   ');
        print('-' * 70);
        print('');
        break;
    }
  }
}



