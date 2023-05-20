import 'dart:io';
import 'dart:convert';

void main() {
  /*Essa linha lê o conteúdo do arquivo representado pela variável caminhousando o método readAsLinesSync().
   O retorno desse método é uma lista de strings, onde cada elemento da lista representa uma linha do arquivo.*/

  final arquivo = File('arquivos_dart/cadastro_json.txt');
  lerMapasDoArquivo(arquivo);
}

void lerMapasDoArquivo(File file) {
  /*Nessa seção, um loop for é usado para iterar sobre cada linha do arquivo lido anteriormente.
  A variável i é o contador do loop, começando em 0 e indo linhas.length - 1(o número total de linhas até no arquivo).
  Dentro do loop, a linha atual é decodificada de JSON para um objeto Dart usando o método json.decode().
  A função decode()recebe uma string JSON como entrada e retorna um objeto Dart equivalente.
  O objeto decodificado é armazenado na variável mapaDecodificado.
  Em seguida, duas instruções de impressão são executadas. A primeira exibe uma mensagem indicando o número do mapa atual, usando uma interpolação de strings ${i + 1}.
  A segunda instrução imprime o conteúdo do mapa decodificado no console.
  Essa função percorre todas as linhas do arquivo JSON, decodifica cada linha e imprime o resultado na tela, exibindo os mapas decodificados.*/

  final conteudo = file.readAsLinesSync();
  for (var i = 0; i < conteudo.length; i++) {
    final linha = conteudo[i].trim();
    if (linha.isNotEmpty) {
      try {
        final mapaDecodificado = json.decode(linha);
        print('\n=== Mapa ${i + 1} ===');
        printMap(mapaDecodificado);
      } catch (e) {
        print('Ocorreu um erro ao decodificar o mapa ${i + 1}: $e');
      }
    }
  }
}

void printMap(Map<String, dynamic> map) {
  /*Essa função de chamada printMap recebe um mapa ( Map<String, dynamic>) como argumento e imprime cada chave e valor do mapa no console.*/
  map.forEach((key, value) { 
    print('$key: $value');
  });
}

/*
Resumo

Essa é a função principal main(), que coordena o fluxo do programa.

Na primeira linha, é criada uma instância da classe Filepara representar o caminho de um arquivo chamado "teste_json.txt" dentro do diretório "Cadastro_dart". 
Essa instância é atribuída à variável caminho.
Em seguida, há um loop forque itera três vezes, de iigual a 1 iigual a 3.
A cada iteração, a função obterInformacoesDoUsuario()é chamada, passando o valor atual de icomo argumento. 
O retorno dessa função é armazenado na variável mapa.
Dentro do bloco do try, o mapa obtido anteriormente é codificado no formato JSON usando json.encode().
O resultado é armazenado na variável mapaCodificado.
Em seguida, a função writeAsStringSync()é usada para gravar o JSON no arquivo representado por caminho, com o modo de gravação definido como FileMode.append, o que adiciona o conteúdo ao final do arquivo.
Se ocorrer algum erro durante a gravação, uma exceção será capturada pelo bloco catche uma mensagem de erro será exibida. 
Após o loop, a função lerMapasDocaminho()é chamada, passando o caminho do arquivo como argumento. Essa função lê o conteúdo do arquivo, decodifica cada linha JSON e imprime os mapas decodificados na tela.*/
