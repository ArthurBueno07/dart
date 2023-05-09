void main(List<String> args) {
  print('-' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA: BÁSICA');
  print('-' * 70);

  List<int> numeros = [1, 2, 3, 4, 5];

  //Em uma varredura forEach para retornar o dobro dos números
  numeros.forEach((numero) {
    print(numero * 2);
  });
}
