void main() {

  
//Length, retorna o tamanho do Map
  Map mapLength = {'a': 1, 'b': 2, 'c': 3};
  print('Este Map tem tamanho: ${mapLength.length}');
  print('-' * 70);

//isEmpty: Retorna true se o Map não contém nenhum par chave/valor.
//isNotEmpty: Retorna true se o Map contém pelo menos um par chave/valor.
  dynamic mapVazio = {};
  dynamic mapCheio = {'a': 1};
  print(
      'Map vazio? ${mapVazio.isEmpty}'); //true print('Map cheio? ${mapCheio.isEmpty}'); //false
  print('Map não vazio? ${mapVazio.isNotEmpty}'); //false
  print('Map não cheio? ${mapCheio.isNotEmpty}'); //true print('-' * 70);

//keys: Retorna um Iterable contendo as chaves do Map.
//values: Retorna um Iterable contendo os valores do Map.
  Map mapChaveValor = {'a': 1, 'b': 2, 'c': 3};
  print(mapChaveValor.keys); // Saída: (a, b, c)
  print(mapChaveValor.values); // Saída: (1, 2, 3)
  print('-' * 70);

//containsKey: Retorna true se o Map contém a chave especificada.
//containsValue: Retorna true se o Map contém o valor especificado.
  Map mapContain = {'a': 1, 'b': 2, 'c': 3};
  print('O Map contem a chave a: ${mapContain.containsKey('a')}'); //true
  print('O Map contem a chave d: ${mapContain.containsKey('d')}'); //false

  print('O Map contem o valor 1: ${mapContain.containsValue(1)}'); //true
  print('0 Map contem o valor 4: ${mapContain.containsValue(4)}'); //false
  print('-' * 70);
}
