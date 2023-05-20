import 'dart:io';

void main() {
  // Caminho do arquivo
  String caminhoArquivo = 'C:/dart_arquivos/Frutas.txt';

  // Abrir arquivo
  File arquivo = File(caminhoArquivo);

  arquivo.readAsLines().then((linhas) {
    // Imprimir a lista de frutas
    print('Lista de Frutas: ');
    for (String linha in linhas) {
      print(linha);
    }
  }).catchError((e){
    print('Erro ao ler arquivo: $e');
  });
}
