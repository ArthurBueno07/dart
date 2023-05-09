void main(){
  Map<String, int> meuMap = { 'a': 1, 'b': 2, 'c': 3, 'd': 4 };

  print('='*70);
  print('VARREDURA COM FOREACH');
  print('='*70);

  meuMap.forEach((chave, valor){
    print('$chave: $valor');
  });
  print('='*70);
}
