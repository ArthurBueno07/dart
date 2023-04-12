import 'dart:io';

void main() {
  print("");
  //Precisamos prestar atenção no nullsafety
  stdout.write("Entre com seu nome: ");
  //nome pode ser nulo
  String? nome = stdin.readLineSync();

  //Precisamos prestar atenção no nullsafety
  stdout.write("Digite sua idade: ");
  //Idade não é nula
  //int.parse é casting
  int idade = int.parse(stdin.readLineSync()!);

  //Saída
  print("Seu nome é $nome");
  print("Sua idade é $idade");
  print('');
}
