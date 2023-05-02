import 'dart:io';
void main(){

  int num = 1;
  int num_2 = 0;

  Map<dynamic, int> a = {};


   for (var i = 1; i <= 10; i++) {
    stdout.write('Digite o $num° número inteiro: '); 
    int numero = int.parse(stdin.readLineSync()!);
    num++;

    num_2++;


  a.putIfAbsent('numero $num_2', () => numero);
    

  }
  print('-'*70);
  print('Números digitados: ');
  print('');
  a.forEach((b, num){
    print('$b: $num');
  });

}