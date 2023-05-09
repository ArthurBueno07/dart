void main(List<String> args) {
  print('-' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA: INTERMEDIÁRIA');
  print('-' * 70);

  var lista = [1, 2, 3, 4];

  //utilizada com o método map()
  var novaLista = lista.map((numero) => numero * 2).toList();

  print(novaLista);
}
