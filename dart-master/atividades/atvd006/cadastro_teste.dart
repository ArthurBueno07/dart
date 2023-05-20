import 'dart:convert';
import 'dart:io';

void main() {
  while (true) {
    final caminho = File('Cadastro.txt');

    print('''

    ========================

    1 - Cadastrar usuario
    2 - Visualizar lista de usuarios cadastrados 
    3 - Remover cadastro
    4 - Atualizar um cadastro

    0 - Sair

    =========================
    ''');

    stdout.write('Escolha uma opção ');
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        criarArquivo(caminho);

        break;

      case 2:
        mostrarArquivo();

        break;

      case 3:
        removerCadastro();
        break;
      default:
    }
  } // Fecha while
} //Fecha main

// Começa gravação
criarArquivo(File caminho) {
  final caminho = File('Cadastro.txt');

  final mapa = obterInformacoesDoUsuario();

  try {
 
    final mapaCodificado = json.encode(mapa);
//FileMode.append para gravar
    caminho.writeAsStringSync(mapaCodificado + '\n', mode: FileMode.append );
    print('Cadastrado com suceso ');
  } catch (e) {
    print('Ocorreu um erro ao cadastrar esse usuario: $e');
  }

  

  lerMapasDocaminho(caminho);
 }

Map<String, dynamic> obterInformacoesDoUsuario() {
 
  print('');
  print('===== Cadastro =====');
  stdout.write('Digite o nome: ');
  final nome = stdin.readLineSync()!;

  stdout.write('Digite a idade: ');
  final idade = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o CPF: ');
  final cpf = stdin.readLineSync()!;

  stdout.write('Digite a cidade: ');
  final cidade = stdin.readLineSync()!;

  return {'nome': nome, 'idade': idade, 'CPF': cpf, 'Cidade': cidade};
}

void lerMapasDocaminho(File caminho) {
 
  final linhas = caminho.readAsLinesSync();
  for (var i = 0; i < linhas.length; i++) {
    final mapaDecodificado = json.decode(linhas[i]);
    print('\n==== Cadastro ${i + 1} ===== ');
    printCadastro(mapaDecodificado);
  }
}

void printCadastro(Map<String, dynamic> mapa) {
  mapa.forEach((key, value) {
    print('$key: $value');
  });
} //Fecha gravação

// Começa leitura
mostrarArquivo() {
  final arquivo = File('Cadastro.txt');
  lerMapasDoArquivo(arquivo);
}

void lerMapasDoArquivo(File file) {
  
  final conteudo = file.readAsLinesSync();
  for (var i = 0; i < conteudo.length; i++) {
    final linha = conteudo[i].trim();
    if (linha.isNotEmpty) {
      try {
        final mapaDecodificado = json.decode(linha);
        print('\n=== Mapa ${i + 1} ===');
        printMostarArquivo(mapaDecodificado);
      } catch (e) {
        print('Ocorreu um erro ao decodificar o mapa ${i + 1}: $e');
      }
    }
  }
}

void printMostarArquivo(Map<String, dynamic> map) {
  /*Essa função de chamada printMap recebe um mapa ( Map<String, dynamic>) como argumento e imprime cada chave e valor do mapa no console.*/
  map.forEach((key, value) {
    print('$key: $value');
  });
} // Fecha Mostrar arquivo

// Função remover
removerCadastro() {
  final caminho = File('Cadastro.txt');
 
  final ListaMapas = lerMapaDoArquivoExcluir(caminho);
  printMapas(ListaMapas);

  stdout.write('\nDigite o número da linha que você deseja excluir: ');
  final linhaParaExcluir = int.parse(stdin.readLineSync()!);

  final listaAtualizada = excluirLinha(ListaMapas, linhaParaExcluir);

  if (listaAtualizada != null) {
    final novoConteudo =
        listaAtualizada.map((mapa) => json.encode(mapa)).join('\n');

 

    caminho.writeAsStringSync(novoConteudo);
    print('Linha ${linhaParaExcluir} excluída com sucesso! ');
  } else {
    print('Falha ao excluir linha ${linhaParaExcluir}.');
  }
}

List<Map<String, dynamic>> lerMapaDoArquivoExcluir(File caminho) {

  final conteudo = caminho.readAsLinesSync();
  final listaMapas = [];

  for (var i = 0; i < conteudo.length; i++) {
    final linha = conteudo[i].trim();

    if (linha.isNotEmpty) {
      try {
        final mapadecodificado = json.decode(linha);
        listaMapas.add(mapadecodificado);
      } catch (e) {
        print('Ocorreu um erro ao decodificar o mapa ${i + 1}: $e');
      }
    }
  }

  return listaMapas.cast<Map<String, dynamic>>();
}



List<dynamic>? excluirLinha(List<dynamic> lista, int linhaParaExcluir) {
  if (linhaParaExcluir > 0 && linhaParaExcluir <= lista.length) {
    lista.removeAt(linhaParaExcluir - 1);
    return lista;
  }
  return null;
}

// Faz a montagem
void printMapas(List<dynamic> lista) {
  for (var i = 0; i < lista.length; i++) {
    final mapa = lista[i];
    print('\n=== Cadastro ${i + 1} ===');
    printRemove(mapa);
  }
}


//Faz a varredura
void printRemove(Map<String, dynamic> map) {
  map.forEach((key, value) {
    print('$key: $value');
  });
} // Fecha exclusão


// Função alterar
