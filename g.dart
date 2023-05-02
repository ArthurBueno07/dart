import 'dart:io';

void main() {
   Map<String, dynamic> nomes = {}; // Cria um mapa vazio que armazenará os nomes e idades das pessoas

  bool sair = false; // Define uma variável booleana que controlará a saída do loop

  while (!sair) { // Enquanto sair for falso, o loop continuará executando
    print('''1 - Adicionar item
2 - Exibir todos os itens
3 - Buscar item por nome
4 - Atualizar item
5 - Remover item
6 - Sair
'''); // Imprime as opções do menu na tela

    stdout.write('Digite uma opção: '); // Pede ao usuário que digite uma opção do menu
    int opcao = int.parse(stdin.readLineSync()!); // Lê a opção digitada pelo usuário

    switch (opcao) { // Verifica qual opção foi escolhida pelo usuário
      case 1: // Se a opção escolhida for 1, adiciona um novo item ao mapa
        stdout.write('Digite um nome: '); // Pede ao usuário que digite um nome
        String nome_add = stdin.readLineSync()!; // Lê o nome digitado pelo usuário

        stdout.write('Digite a idade: '); // Pede ao usuário que digite uma idade
        int idade_add = int.parse(stdin.readLineSync()!); // Lê a idade digitada pelo usuário

        nomes.putIfAbsent(nome_add, () => idade_add); // Adiciona o nome e a idade ao mapa

        stdout.write('Digite seu endereço: '); // Pede ao usuário que digite um endereço
        String endereco = stdin.readLineSync()!; // Lê o endereço digitado pelo usuário

        nomes.putIfAbsent('Endereço', () => endereco); // Adiciona o endereço ao mapa

        break;

      case 2: // Se a opção escolhida for 2, exibe todos os itens do mapa
        print(nomes);
        break;

      case 3: // Se a opção escolhida for 3, busca um item por nome
        stdout.write('Digite um nome: '); // Pede ao usuário que digite um nome para buscar
        String nome_busca = stdin.readLineSync()!; // Lê o nome digitado pelo usuário

        if (nomes.containsKey(nome_busca)) { // Se o mapa contiver o nome buscado, exibe o nome e a idade correspondentes
          print('${nome_busca}: ${nomes[nome_busca]}');
        } else { // Caso contrário, exibe uma mensagem de erro
          print('Nome não encontrado');
        }
        break;

      case 4: // Se a opção escolhida for 4, atualiza um item do mapa
        stdout.write('Digite um nome: '); // Pede ao usuário que digite um nome para atualizar
        String nome_atualiza = stdin.readLineSync()!; // Lê o nome digitado pelo usuário

        if (nomes.containsKey(nome_atualiza)) { // Se o mapa contiver o nome buscado, atualiza a idade correspondente
          stdout.write('Digite a nova idade: '); // Pede ao usuário que digite a nova idade
          int nova_idade = int.parse(stdin.readLineSync()!); // Lê a nova idade digitada pelo usuário
          nomes[nome_atualiza] = nova_idade; // Atualiza a idade correspondente ao nome
        } else {
          print('Nome não encontrado'); // Caso não encontre o nome
        }
        break;

         case 5:
        stdout.write('Digite um nome: '); // Pede o nome que o usuario quer remover
        String nome_remove = stdin.readLineSync()!; // Recebe o nome que o usuario digitou
        if (nomes.containsKey(nome_remove)) { // Verifica se o nome esta no mapa
          nomes.remove(nome_remove); // Remove o nome que o usuario pediu
          print('${nome_remove} removido');
        } else {
          print('Nome não encontrado'); // Caso não encontre o nome
        }
        break;

      case 6:
        sair = true; // Termina o loop while
        break;

      default:
        print('Opção inválida'); // Caso o usuario digite alguma opção invalida
        break;
    }
  }
}