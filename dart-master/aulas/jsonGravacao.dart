import 'dart:convert';
import 'dart:io';

void main() {
  final caminho = File('arquivos_dart/cadastro_json.txt');
  /* Essa linha cria uma instância da classe Filepara representar 
  o caminho de um arquivo chamado "teste_json.txt" dentro de um diretório chamado "Cadastro_dart".
  A palavra-chave finaldeclara uma variável imutável que receberá esse caminho. */

  for (var i = 1; i <= 3; i++) {
    /*Este trecho inicia um loop forque itera três vezes. A cada iteração,
     ele chama a função obterInformacoesDoUsuario()e passa o valor atual de i como argumento.
      O retorno dessa função é armazenado na variável mapa.*/
    final mapa = obterInformacoesDoUsuario(i);

    try {
      /*
A palavra-chave final é usada em Dart para declarar uma variável imutável, ou seja, 
uma variável cujo valor não pode ser alterado depois de atribuído. 
Quando uma variável é declarada como final, ela precisa ser inicializada com um valor,
e uma vez atribuído, esse valor não pode ser alterado.
*/
      final mapaCodificado = json.encode(mapa);
//FileMode.append para gravar
      caminho.writeAsStringSync(mapaCodificado + '\n', mode: FileMode.append);
      print('Mapa $i gravado com sucesso!');
    } catch (e) {
      print('Ocorreu um erro ao gravar o mapa $i: $e');
      
    }

    /*Nessa seção, o mapa obtido é codificado no formato JSON usando 
    json.encode(), e o resultado é armazenado na variável mapaCodificado. 
    Em seguida, a função writeAsStringSync()é usada para gravar o JSON no arquivo representado por caminho. 
    O parâmetro mode: FileMode.appendespecifica que o conteúdo será adicionado ao final do arquivo, em vez de substituí-lo.
    Se ocorrer algum erro durante a gravação, uma exceção será capturada e uma mensagem de erro será exibida.
    */

  }
  lerMapasDocaminho(caminho);
  /*Após o loop, a função lerMapasDocaminho()é chamada, passando o caminho do arquivo como argumento*/
}

Map<String, dynamic> obterInformacoesDoUsuario(int numeroMapa) {

  /*Essa função obterInformacoesDoUsuario()recebe um número de mapa como argumento 
  e solicita ao usuário que digite o nome, idade e cidade.
  Em seguida, ela cria e retorna um mapa com essas informações.*/

  print('== === Preenchendo o Mapa $numeroMapa ===');
  stdout.write('Digite o nome: ');
  final nome = stdin.readLineSync()!;

  stdout.write('Digite a idade: ');
  final idade = int.parse(stdin.readLineSync()!);

  stdout.write('Digite a cidade: ');
  final cidade = stdin.readLineSync()!;

  return {'nome': nome, 'idade': idade, 'cidade': cidade};
}

void lerMapasDocaminho(File caminho) {
  /*
  Nessa função lerMapasDocaminho(), o conteúdo do arquivo é lido usando readAsLinesSync(), 
  que retorna uma lista de strings representando cada linha do arquivo.
  Em seguida, um loop foritera sobre cada linha e usa json.decode()para decodificar o JSON de cada linha.
  O mapa decodificado é impresso na tela.*/
  final linhas = caminho.readAsLinesSync();
  for (var i = 0; i < linhas.length; i++) {
    final mapaDecodificado = json.decode(linhas[i]);
    print('\n=== Mapa ${i + 1} === == ');
    print(mapaDecodificado);
  }
}

void printMap(Map<String, dynamic> mapa) {
  mapa.forEach((key, value) {
    print('$key: $value');
  });
}
