void main(){
  int a = 20;
  int b = 5;
  int c = 7;

  //Verificando verdadeiro
  bool proposicao1 = a > b;  
  bool proposicao2 = b < c;

  print('Verdadeiro-----------------');

  print('$a > $b && $b < $c - Resposta: ${proposicao1 && proposicao2}');  
  print('$a > $b || $b < $c - Resposta: ${proposicao1 || proposicao2}\n');  

  bool proposicao3 = a < b;  
  bool proposicao4 = b > c;

  print('Falso-----------------');

  print('$a < $b && $b > $c - Resposta: ${proposicao3 && proposicao4}');  
  print('$a > $b || $b > $c - Resposta: ${proposicao3 || proposicao4}\n');  

  bool v = true;
  bool f = false;

  print('Negando--------------');
  print('Negando o V: ${!v}');
  print('Negando o F: ${!f}');

}
