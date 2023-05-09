//Estudo de listas: Criação

void main() {
//Lista vazia
  dynamic listaVazia = [];

// Criando uma lista de inteiros
// var para inferência de valores
  var numerosInteiros1 = [1, 2, 3, 4, 5];

//Utilizando Generics para tipar os valores
//Lista de Inteiros
  List<int> numerosInteiros2 = [6, 7, 8, 9, 10];

//Lista de Ponto Flutuante
//4 e 5 inteiros e a lista é double?
  List<double> numerosDecimais = [1.1, 2.2, 3.3, 4, 5];

// Lista de Strings
  List<String> listaNomes = ['Neymar',
   'Ribamar',
   'Halaand', 
   'Messi',
   'Cristiano Ronaldo' ];

//Lista de listas

  dynamic listaComListas = [
    [1, 2, 3],
    ['Um', 'Dois', 'Três']
  ];

  print('-' * 70);
  print('Lista vazia: $listaVazia');
  print('Lista com numeros inteiros 1: $numerosInteiros1');
  print('Lista com numeros inteiros 2: $numerosInteiros2');
  print('Lista de numeros decimais: $numerosDecimais');
  print('Lista de nomes: $listaNomes');
  print('Lista com listas : $listaComListas'); 
  print('-' * 70);
}
