
void main() {
// sublist: retorna uma sublista a partir de um índice 
////inicial e um final (opcional). Final -1.
  List<int> lista = [1, 2, 3, 4, 5];
  print('Lista original: $lista');
  print('Sublista gerada: ${lista.sublist(1, 3)}');
  print('-' * 70);

// sort: ordena os elementos da lista.
  List<String> listaVogais2 = ['u', 'a', 'o', 'i', 'e'];
  print('Lista original: $listaVogais2');
  listaVogais2.sort();
  print('Lista ordenada: $listaVogais2');
  print('-' * 70);

// reversed: retorna uma nova lista com os elementos em ordem
  List<int> listaNumeros2 = [1, 2, 3, 4, 5, 6];
  print('Lista original: $listaNumeros2');
  var listaReversa = listaNumeros2.reversed.toList();
  print('Lista reversa: $listaReversa');
  print('-' * 70);
  
// shuffle: embaralha os elementos da lista.
  List<String> listaVerduras = ['Couve', 'Serraia', 'Alface', 'Rucula'];
  print('Lista original: $listaVerduras');
  listaVerduras.shuffle();
  print('Lista embaralhada: $listaVerduras');
  print('-' * 70);
}
