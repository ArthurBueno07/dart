import 'dart:io';
void main() {
  // Entrada de dados
  print("Digite o valor principal:");
  double principal = double.parse(stdin.readLineSync()!);

  print("Digite a taxa de juros (em %):");
  double taxa = double.parse(stdin.readLineSync()!);

  print("Digite o período de tempo (em anos):");
  double tempo = double.parse(stdin.readLineSync()!);

  // Cálculo dos juros juros
  double juros = ((principal * taxa) / 100) * tempo;

  // Saída de dados
  print("O valor dos juros compostos é: R\$ ${juros.toStringAsFixed(2)}");
}
