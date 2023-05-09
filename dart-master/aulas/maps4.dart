void main() {
var meuMap = {'a': 1, 'b': 2, 'c': 3};
print('-' * 70);
print('VARREDURA COM O MÉTODO MAP()'); print('-'*70);
// Não coonfundir o método map() com o tipo Map<>
// O método map() retorna uma nova coleção com o mesmo número de elementos da coleção original, mas com os elementos transformados.
var resultado =
meuMap.entries.map((entrada) => '${entrada.key}: ${entrada.value}');

print (resultado.join(', ')); // Saída: a: 1, b: 2, c: 3

//TRANSFORMAÇÃO UTILIZANDO UMA LISTA
print('='*70);
List numeros = [1, 2, 3, 4, 5];
var doubledNumbers = numeros.map((number) => number * 2);

print(doubledNumbers); // Saída: (2, 4, 6, 8, 10)
print('-' * 70);

} 