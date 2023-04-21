//Métodos para utilizar com listas

void main() {
  print('-' * 70);
  print('LISTA DE MÉTODOS PARA LISTAS');
  print('=' * 70);

// add: adiciona um elemento ao final da lista.
  List<int> listaInteiros = [1, 2, 3];
  print('Lista original: $listaInteiros');
  
  listaInteiros.add(4);
  print('Lista nova: $listaInteiros');
  print('-' * 70);

// addAll: adiciona vários elementos ao final da I 
  List<String>
  listaFrutas = ['banana', 'maçā', 'pēra'];
  print('Lista original: $listaFrutas');

  listaFrutas.addAll(['Uva', 'goiaba', 'manga']);
  print('Lista nova: $listaFrutas');
  print('-' * 70);

// remove: remove um elemento específico da lista.
  List<String> listaNomes = ['João', 'Maria', 'José'];
  print('Lista original: $listaNomes');

  listaNomes.remove('João');
  print('Lista nova: $listaNomes');
  print('-' * 70);

// removeAt: remove um elemento pelo índice.
  List<double> listaDouble = [1.1, 2.2, 3.3]; print('Lista original: $listaDouble');
  listaDouble.removeAt(1);
  print('Lista nova: $listaDouble');
  print('-' * 70);

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
