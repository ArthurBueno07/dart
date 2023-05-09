void main() {
  print('1 -  numero par');
  print('2 -  maior numero');
  print('3 -  Sair');

  int opcao = 1;

  switch (opcao) {
    case 1:
      int numero = 10;

      if (numero % 2 == 0) {
        print("o $numero é par");
      } else {
        print("O $numero é impar");
      }
      break; //interrompe a case

    case 2:
      int a = 3;
      int b = 3;

      if (a > b)
       {
        print("o numero $a é maior que $b!");
      } 
      else if (a < b)
       {
        print("o numero $a é menor que $b!");
      } 
      else
       {
        print("os numeros sãos iguais!");
      }
      break;

    default:
      print("Fora do intervalo de opções!");
  }
}
