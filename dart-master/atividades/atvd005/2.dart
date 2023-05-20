// Importando a biblioteca dart:io para ter acesso às funções de entrada e saída padrão.
import 'dart:io';

// Criação de um Map que armazena os dados dos usuários cadastrados.
Map<var, String> musicas = {};

// Função que realiza o cadastro de um usuário.
void cadastroMusicas(nome, cantor, ano) {
  // Adicionando os dados do usuário ao Map.
  musicas[nome] = {
'Cantor': cantor, 
'Lançamento': ano};

  // Exibindo as informações do usuário cadastrado.
  print('');
  print('Nome: $nome ');
  print('=' * 70);
  print('Cantor: $cantor ');
  print('=' * 70);
  print('Lançamento: $ano ');
  print('=' * 70);
  print('Você foi cadastrado!');
  print('');
}

// Função que realiza a remoção de um usuário cadastrado.
dynamic remover(dados, Map musicas) {
  // Solicitando o nome do usuário a ser removido.
  stdout.write('Qual usuário você deseja remover: ');
  dynamic nome_remove = stdin.readLineSync()!;

  // Removendo o usuário do Map.
  musicas.remove(nome_remove);

  // Exibindo a mensagem de cadastro atualizado.
  print('=' * 70);
  print('Cadastro atualizado');
  print('=' * 70);

  // Retornando os dados atualizados.
  return dados;
}

// Função que realiza a consulta de um usuário pelo nome.
consultarMusica(Map musica, {String? musica_consultar}) {
  // Verificando se o nome do usuário foi informado como parâmetro.
  if (musica_consultar == null) {
    // Solicitando o nome do usuário a ser consultado.
    print('');
    stdout.write('Digite o nome do usuário que deseja buscar: ');
    print('');
    musica_consultar = stdin.readLineSync();
  }

  // Verificando se o usuário existe no Map.
  if (musica.containsKey(musica_consultar)) {
    // Retornando os dados do usuário encontrado.
    return musica[musica_consultar];
  } else {
    // Retornando null caso o usuário não exista.
    return null;
  }
}

// Função anônima que exibe as informações de todos os usuários cadastrados.
contaMusica() {
  // Verificando se o Map está vazio.
  if (musicas.isEmpty) {
    print('Nenhum usuário cadastrado!');
  } else {
    // Exibindo as informações de todos os usuários cadastrados.
    print('\nMusicas cadastradas: ');
    int quantidade = 0;
    musicas.forEach((chave, valor) {
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
    1 - Para cadastrar uma musica
    2 - Para exibir todos as musicas
    3 - Remover musica
    4 - Buscar musica
    0 - Sair do programa
    ''');

    stdout.write('Escolha uma opção: ');
    print('');
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        stdout.write('Digite o nome da música: ');
        String nome = stdin.readLineSync()!;

        stdout.write('Digite o nome do cantor: ');
        int cantor = int.parse(stdin.readLineSync()!);

        // Chama a função de cadastro para adicionar o usuário ao Map.
        cadastroMusicas(nome, cantor, ano);

        break;

      case 2:
        // Chama a função para exibir todos os usuários cadastrados.
        contaMusica();

        break;

      case 3:
        // Chama a função de remoção passando o Map de cadastros.
        remover(dados, musicas);
        break;

      case 4:
        if (musicas.isEmpty) {
          print('');
          print('Não contém nenhum usuário! ');
          print('');
          break;
        }
        // Chama a função de consulta de usuário passando o Map de cadastros.
        dynamic musicaEncontrada = consultarMusica(musicas);
        if (musicaEncontrada != null) {
          print('');
          print('Música não encontrada: $musicaEncontrada');
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
