import 'dart:io';
import 'dart:convert';

void main() {
  final caminho = File('arquivos_dart/cadastro_json.txt');
  /*
  Essa linha cria uma instância da classe File para representar o caminho de um arquivo chamado "cadastro_json.txt" 
  dentro do diretório "arquivos_dart". 
  Essa instância é atribuída à variável caminho.
  */

  final ListaMapas = lerMapsDoArquivo(caminho);
  printMapas(ListaMapas);

  /*
  Essas linhas chamam a função lerMapsDoArquivo()passando o caminho do arquivo como argumento.
  Essa função lê o conteúdo do arquivo, decodifica cada linha JSON e retorna uma lista de mapas.
  A lista de mapas é mantida na variável ListaMapas. Em seguida, a função printMapas()é chamada,
  passando a lista de mapas como argumento.
  Essa função imprime cada mapa da lista no console.
   */

  stdout.write('\nDigite o número da linha que você deseja excluir: ');
  final linhaParaExcluir = int.parse(stdin.readLineSync()!);

  /*
  Essas linhas solicitam ao usuário que digite o número da linha que deseja excluir.
  O número é lido do console usando stdin.readLineSync(),
  convertido para um inteiro usando int.parse()e armazenado na variável linhaParaExcluir.
  */

  final listaAtualizada = excluirLinha(ListaMapas, linhaParaExcluir);

  if (listaAtualizada != null) {

    final novoConteudo = listaAtualizada.map((mapa) => json.encode(mapa)).join('\n');
    
        /*
  writeAsstringSync: Abre o arquivo, grava e cadeia de caracteres na codificação
  fornecida e fecha o arquivo.
  join('\n): separar os mapas

  Essas linhas chamam a função excluirLinha()passando a lista de mapas ( ListaMapas) e o número da linha para excluir ( linhaParaExcluir).
  Essa função verifica se o número da linha está dentro dos limites da lista e, se estiver, remove uma linha correspondente da lista.
  A função retorna a lista atualizada.
  Se a lista for atualizada com sucesso, o código dentro do bloco if é executado.
  Ele mapeia cada mapa da lista atualizado para sua representação JSON usando json.encode(), juntando-os com \n usando join().
  O resultado é armazenado na variável novoConteudo. Em seguida, o novo conteúdo é gravado no arquivo representado caminhousando caminho.writeAsStringSync(novoConteudo).
  Por fim, uma mensagem de sucesso é impressa no console.
  Se a lista não puder ser atualizada (por exemplo, se o número da linha estiver fora dos limites da lista), 
  o código dentro do bloco else é executado, exibindo uma mensagem de falha no console.
  */

    caminho.writeAsStringSync(novoConteudo);
    print('Linha ${linhaParaExcluir} excluída com sucesso! ');
  } else {
    print('Falha ao excluir linha ${linhaParaExcluir}.');
  }
}

List<Map<String, dynamic>> lerMapsDoArquivo(File caminho) {

  /*
  Essa função chamada lerMapsDoArquivo()recebe o caminho de um arquivo como argumento e retorna uma lista de mapas decodificados a partir do conteúdo desse arquivo.
  A função lê o conteúdo do arquivo usando caminho.readAsLinesSync(), que retorna uma lista de strings, onde cada string representa uma linha do arquivo.
  Em seguida, há um loop for que percorre cada linha do arquivo.
  Cada linha é atribuída à variável linha após ser removidas quaisquer espaços em branco extras usando trim().
  Se a linha não estiver vazia (ou seja, se tiver algum conteúdo), o código dentro do bloco ifé executado.
  Ele tenta decodificar a linha JSON usando json.decode(linha).
  Se a decodificação for bem-sucedida, o mapa decodificado é adicionado à lista de mapas listaMapas.
  Se ocorrer um erro durante a decodificação, uma mensagem de erro é impressa no console, indicando o número do mapa onde ocorreu o erro.
  Por fim, a função retorna a lista de mapas decodificados, convertendo-a para o tipo List<Map<String, dynamic>>usando listaMapas.cast<Map<String, dynamic>>().
  Isso é feito para fornecer um tipo específico para a lista.
  */


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
  /*
  O método .cast() é usado para converte os elementos de uma lista em
  um tipo específico. Ele retorna uma nova lista contendo os 
  elementos convertidos.
  */
  return listaMapas.cast<Map<String, dynamic>>();
}


/*
Essa função de chamada excluirLinha()recebe uma lista e um número de linha para excluir como argumentos.
Se o número da linha estiver dentro dos limites da lista (ou seja, maior que zero e não ultrapasse o tamanho da lista), a linha correspondente é removida da lista usando lista.removeAt(linhaParaExcluir - 1).
Em seguida, a lista atualizada é retornada.
Se o número da linha estiver fora dos limites da lista, a função retorna null.
*/
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
    print('\n=== Mapa ${i + 1} ===');
    printMap(mapa);
  }
}

/*
Essas são duas funções auxiliares para imprimir mapas no console.
A função printMapas()recebe uma lista de mapas como argumento.
Ela itera sobre a lista e, para cada mapa, imprime uma mensagem indicando o número do mapa e, em seguida, chama a função printMap()passando o mapa como argumento.
A função printMap()recebe um mapa como argumento.
Ela itera sobre cada par chave-valor no mapa usando o método forEach(), e para cada par, imprime a chave e o valor no console.
*/

//Faz a varredura
void printMap(Map<String, dynamic> map) {
  map.forEach((key, value) {
    print('$key: $value');
  });
}
