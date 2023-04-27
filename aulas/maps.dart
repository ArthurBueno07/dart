
void main() {
//Declarando Map
Map<String, dynamic> agenda = {
  'Neymar': {'idade ': 28, 'email': 'neymardugrau@gmail.com'},
  'cristiano Ronaldo': {'idade ': 36, 'email': 'cr7@gmail.com'},
};

Map<String, dynamic> cadastro = {
  'Nome': 'Neymar',
  'Nascimento': 1992,
  'Altura': 1.84,
  'Est_civil' : 'casado',
  'Cidade' : 'Juiz de Fora',
  'UF': 'MG',
};

print('-'*70);
print('Minha agenda: ');
print(agenda);
print('-'*70);


print('-'*70);
print('Meu cadastro: ');
print(cadastro);
print('-'*70);
}