void main() {
print('-' * 70);
print('EXEMPLO DE WHERE(), MAP() E REDUCE() NA FILTRAGEM'); print('=' * 70);

Map<String, int> numeros ={
  'um': 1,
'dois': 2,
'tres': 3,
'quatro': 4,
'cinco': 5
};


int soma = numeros.values

// Observe que a ordem em que esses métodos são chamados é importante.
// Primeiro, é necessário aplicar o método values para obter uma coleção de valores do Map,
// depois usar o método where() para filtrar os elementos selecionados, em seguida, aplicar o método map() para transformar os elementos restantes e,
// por fim, aplicar o método reduce() para combinar os elementos resultantes em um valor único. */

.where((num) => num % 2 == 0) // Filtra apenas os números pares
.map((num) => num * 2)

// Multiplica cada número por 2
.reduce((soma, num) => soma + num); // Soma todos os números resultantes

print(soma); // Imprime o resultado (12)

print('=' * 70);
} 