
void main(){
  print('='* 70);
  print('EXEMPLO WHERE EM MAPS');
  print('='* 70);
  Map<String, int> pessoas = {
    'Neymar': 19,
    'Cristiano Ronaldo': 17,
    'Ribamar': 25,
    'Tiquinho': 16,
    'Tchetchê': 34 
  };

  Map<String, int> pessoasMaiores = 
      Map.fromEntries(pessoas.entries.where((element) => element.value > 18 ));

      //Saída
      print(pessoasMaiores);
      print('='* 70);
}