void main() {
  
// insert: insere um elemento em um índice específico.
  List<String> listaArtistas = ['Fernanda Torres', 'Paulo José', 'Raul Cortez'];
  print('Lista original: $listaArtistas');
  listaArtistas.insert(1, 'Neymar');
  print('Lista nova: $listaArtistas');
  print('-' * 70);

// insertAll: insere vários elementos em um índice específico.
 List<int> listaNumeros = [3, 4, 5]; print('Lista original: $listaNumeros');
  listaNumeros.insertAll(0, [1, 2]); print('Lista nova: $listaNumeros');
  print('-' * 70);

//indexOf: retorna o índice do primeiro elemento encontrado na lista.
  List<String> listaVogais = ['a', 'e', 'i', 'o', 'u', 'a', 'e', 'i', 'o', 'u'];
  print(listaVogais);
  print('A 1a ocorrência da vogal i: índice ${listaVogais.indexOf('i')}');
  print('-' * 70);

// lastIndexOf: retorna o índice do último elemento encontrado na lista.
  List<String> listaCarros = ['Fusca', 'Gol', 'Ferrari', 'Gol'];
  print(listaCarros);
  print('A última ocorrência do Gol: índice ${listaCarros.lastIndexOf('Gol')}');
  print('-' * 70);
}
