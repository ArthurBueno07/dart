import 'dart:io';

void main() {
  Map<String, dynamic> nomes = {};

  bool sair = false;

  while (!sair) {
    print('''1 - Adicionar item
2 - Exibir todos os itens
3 - Buscar item por nome
4 - Atualizar item
5 - Remover item
6 - Sair
''');

    stdout.write('Digite uma opção: ');
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        stdout.write('Digite um nome: ');
        String nome_add = stdin.readLineSync()!;

        stdout.write('Digite a idade: ');
        int idade_add = int.parse(stdin.readLineSync()!);

        nomes.putIfAbsent(nome_add, () => idade_add);

        stdout.write('Digite seu endereço: ');
        String endereco = stdin.readLineSync()!;

        nomes.putIfAbsent('Endereço', () => endereco);

        break;

      case 2:
        print(nomes);
        break;

      case 3:
        stdout.write('Digite um nome: ');
        String nome_busca = stdin.readLineSync()!;

        if (nomes.containsKey(nome_busca)) {
          print('${nome_busca}: ${nomes[nome_busca]}');
        } else {
          print('Nome não encontrado');
        }
        break;

      case 4:
        stdout.write('Digite um nome: ');
        String nome_atualiza = stdin.readLineSync()!;
        if (nomes.containsKey(nome_atualiza)) {
          stdout.write('Digite a nova idade: ');
          int nova_idade = int.parse(stdin.readLineSync()!);
          nomes[nome_atualiza] = nova_idade;
          print('Idade atualizada para ${nova_idade}');
        } else {
          print('Nome não encontrado');
        }
        break;

      case 5:
        stdout.write('Digite um nome: ');
        String nome_remove = stdin.readLineSync()!;
        if (nomes.containsKey(nome_remove)) {
          nomes.remove(nome_remove);
          print('${nome_remove} removido');
        } else {
          print('Nome não encontrado');
        }
        break;

      case 6:
        sair = true;
        break;

      default:
        print('Opção inválida');
        break;
    }
  }
}
