import 'dart:io';
import 'dart:convert';

void main() {
  final caminho = File('produtos.txt');

  for (var i = 1; i <= 1; i++) {
    final mapa = obterInformacoesDoUsuario();

    try {
   
      final mapaCodificado = json.encode(mapa);
     
      caminho.writeAsStringSync(mapaCodificado + '\n', mode: FileMode.append);
      print('Produto gravado com sucesso!');
    } catch (e) {
      print('Ocorreu um erro ao gravar o produto $i: $e');
    }
  }

  lerMapasDoArquivo(caminho);
}

Map<String, dynamic> obterInformacoesDoUsuario() {
  print('=== Incluindo Produtos ===');
  stdout.write('Digite o nome do produto: ');
  final nome = stdin.readLineSync()!;

  stdout.write('Digite o valor do produto: ');
  final valor = double.parse(stdin.readLineSync()!);

  return {'nome': nome, 'valor': valor};
}

void lerMapasDoArquivo(File arquivo) {
  final linhas = arquivo.readAsLinesSync();

  for (var i = 0; i < linhas.length; i++) {
    final mapaDecodificado = json.decode(linhas[i]);
    print('\n=== Produtos ===');
    printMap(mapaDecodificado);
  }
}

void printMap(Map<String, dynamic> mapa) {
  mapa.forEach((key, value) {
    print('$key: $value');
  });
}
