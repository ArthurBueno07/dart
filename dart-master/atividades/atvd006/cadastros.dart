import 'dart:convert';
import 'dart:io';

Map<String, dynamic> cadastroDoUsuario() {
  print('');
  print('===== Cadastro =====');
  stdout.write('Digite o nome: ');
  final nome = stdin.readLineSync()!;

  stdout.write('Digite a idade: ');
  final idade = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o CPF: ');
  final cpf = stdin.readLineSync()!;

  stdout.write('Digite a cidade: ');
  final cidade = stdin.readLineSync()!;

  return {'nome': nome, 'idade': idade, 'CPF': cpf, 'Cidade': cidade};
}

void lerCadastro(File caminho) {
  final printar = caminho.readAsLinesSync();
  for (var i = 0; i < printar.length; i++) {
    final a = printar[i].trim();
    if (a.isNotEmpty) {
      try {
        final decodifica = jsonDecode(a);
        print('');
        print('===== ${i + 1}° Cadastro ===== ');
        printCadastro(decodifica);
      } catch (e) {
        print('Ocorreu um erro ao decodificar os cadastros: $e ');
      }
    }
  }
}

void printCadastro(Map<String, dynamic> printar) {
  printar.forEach((key, value) {
    print('$key: $value');
  });
}

void main() {
  final caminho = File('Cadastro_Usuario.txt');

  // Função para remover cadastro

  List<Map<String, dynamic>> lerRemoveCadastro(File caminho) {
    final a = caminho.readAsLinesSync();
    final listaRemove = [];

    for (var i = 0; i < a.length; i++) {
      final linha = a[i].trim();

      if (linha.isNotEmpty) {
        try {
          final mapaDecodi = jsonDecode(linha);
          listaRemove.add(mapaDecodi);
        } catch (e) {
          print('Ocorreu um erro ao decodificar o cadastro: $e ');
        }
      }
    }
    return listaRemove.cast<Map<String, dynamic>>();
  }

  List<dynamic>? removerLinha(List<dynamic> lista, int excluirLinha) {
    if (excluirLinha > 0 && excluirLinha <= lista.length) {
      lista.removeAt(excluirLinha - 1);
      return lista;
    }
    return null;
  }

  // Fim das funções

  bool sair = false;

  while (!sair) {
    print('''

    === ESCOLHA UMA OPÇÃO ===
    1 - Cadastrar usuario
    2 - Visualizar lista de usuarios cadastrados 
    3 - Remover cadastro
    4 - Atualizar um cadastro

    0 - Sair
''');

    var opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        var mapa = cadastroDoUsuario();

        try {
          final mapaCodi = jsonEncode(mapa);
          caminho.writeAsStringSync(mapaCodi + '\n', mode: FileMode.append);
          print('');
          print('Cadastro salvo com sucesso! ');
        } catch (e) {
          print('Ocorreu um erro ao cadastrar usuario! $e ');
        }

        break;

      case 2:
        lerCadastro(caminho);

        break;

      case 3:
        final listaMapas = lerRemoveCadastro(caminho);
        lerCadastro(caminho);

        stdout.write('\nDigite o número da linha que você deseja excluir: ');
        final excluirLinha = int.parse(stdin.readLineSync()!);

        final listaAtualizada = removerLinha(listaMapas, excluirLinha);

        if (listaAtualizada != null) {
          final novoConteudo =
              listaAtualizada.map((mapa) => json.encode(mapa)).join('\n');

          caminho.writeAsStringSync(novoConteudo);
          print('');
          print('Linha ${excluirLinha} excluída com sucesso! ');
        } else {
          print('Falha ao excluir linha ${excluirLinha}.');
        }

        break;

      case 0:
        sair = true;
        print('''

====== VOCÊ SAIU SEU RENEGADO ======


``````¶0````1¶1_```````````````````````````````````````
```````¶¶¶0_`_¶¶¶0011100¶¶¶¶¶¶¶001_````````````````````
````````¶¶¶¶¶00¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶0_````````````````
`````1_``¶¶00¶0000000000000000000000¶¶¶¶0_`````````````
`````_¶¶_`0¶000000000000000000000000000¶¶¶¶¶1``````````
```````¶¶¶00¶00000000000000000000000000000¶¶¶_`````````
````````_¶¶00000000000000000000¶¶00000000000¶¶`````````
`````_0011¶¶¶¶¶000000000000¶¶00¶¶0¶¶00000000¶¶_````````
```````_¶¶¶¶¶¶¶00000000000¶¶¶¶0¶¶¶¶¶00000000¶¶1````````
``````````1¶¶¶¶¶000000¶¶0¶¶¶¶¶¶¶¶¶¶¶¶0000000¶¶¶````````
```````````¶¶¶0¶000¶00¶0¶¶`_____`__1¶0¶¶00¶00¶¶````````
```````````¶¶¶¶¶00¶00¶10¶0``_1111_`_¶¶0000¶0¶¶¶````````
``````````1¶¶¶¶¶00¶0¶¶_¶¶1`_¶_1_0_`1¶¶_0¶0¶¶0¶¶````````
````````1¶¶¶¶¶¶¶0¶¶0¶0_0¶``100111``_¶1_0¶0¶¶_1¶````````
```````1¶¶¶¶00¶¶¶¶¶¶¶010¶``1111111_0¶11¶¶¶¶¶_10````````
```````0¶¶¶¶__10¶¶¶¶¶100¶¶¶0111110¶¶¶1__¶¶¶¶`__````````
```````¶¶¶¶0`__0¶¶0¶¶_¶¶¶_11````_0¶¶0`_1¶¶¶¶```````````
```````¶¶¶00`__0¶¶_00`_0_``````````1_``¶0¶¶_```````````
``````1¶1``¶¶``1¶¶_11``````````````````¶`¶¶````````````
``````1_``¶0_¶1`0¶_`_``````````_``````1_`¶1````````````
``````````_`1¶00¶¶_````_````__`1`````__`_¶`````````````
````````````¶1`0¶¶_`````````_11_`````_``_``````````````
`````````¶¶¶¶000¶¶_1```````_____```_1``````````````````
`````````¶¶¶¶¶¶¶¶¶¶¶¶0_``````_````_1111__``````````````
`````````¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶01_`````_11____1111_```````````
`````````¶¶0¶0¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶1101_______11¶_```````````
``````_¶¶¶0000000¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶0¶0¶¶¶1````````````
`````0¶¶0000000¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶1`````````````
````0¶0000000¶¶0_````_011_10¶110¶01_1¶¶¶0````_100¶001_`
```1¶0000000¶0_``__`````````_`````````0¶_``_00¶¶010¶001
```¶¶00000¶¶1``_01``_11____``1_``_`````¶¶0100¶1```_00¶1
``1¶¶00000¶_``_¶_`_101_``_`__````__````_0000001100¶¶¶0`
``¶¶¶0000¶1_`_¶``__0_``````_1````_1_````1¶¶¶0¶¶¶¶¶¶0```
`_¶¶¶¶00¶0___01_10¶_``__````1`````11___`1¶¶¶01_````````
`1¶¶¶¶¶0¶0`__01¶¶¶0````1_```11``___1_1__11¶000`````````
`1¶¶¶¶¶¶¶1_1_01__`01```_1```_1__1_11___1_``00¶1````````
``¶¶¶¶¶¶¶0`__10__000````1____1____1___1_```10¶0_```````
``0¶¶¶¶¶¶¶1___0000000```11___1__`_0111_```000¶01```````
```¶¶¶00000¶¶¶¶¶¶¶¶¶01___1___00_1¶¶¶`_``1¶¶10¶¶0```````
```1010000¶000¶¶0100_11__1011000¶¶0¶1_10¶¶¶_0¶¶00``````
10¶000000000¶0________0¶000000¶¶0000¶¶¶¶000_0¶0¶00`````
¶¶¶¶¶¶0000¶¶¶¶_`___`_0¶¶¶¶¶¶¶00000000000000_0¶00¶01````
¶¶¶¶¶0¶¶¶¶¶¶¶¶¶_``_1¶¶¶00000000000000000000_0¶000¶01```
1__```1¶¶¶¶¶¶¶¶¶00¶¶¶¶00000000000000000000¶_0¶0000¶0_``
```````¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶00000000000000000000010¶00000¶¶_`
```````0¶¶¶¶¶¶¶¶¶¶¶¶¶¶00000000000000000000¶10¶¶0¶¶¶¶¶0`
````````¶¶¶¶¶¶¶¶¶¶0¶¶¶00000000000000000000010¶¶¶0011```
````````1¶¶¶¶¶¶¶¶¶¶0¶¶¶0000000000000000000¶100__1_`````
`````````¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶000000000000000000¶11``_1``````
`````````1¶¶¶¶¶¶¶¶¶¶¶0¶¶¶00000000000000000¶11___1_`````
``````````¶¶¶¶¶¶0¶0¶¶¶¶¶¶¶0000000000000000¶11__``1_````
``````````¶¶¶¶¶¶¶0¶¶¶0¶¶¶¶¶000000000000000¶1__````__```
``````````¶¶¶¶¶¶¶¶0¶¶¶¶¶¶¶¶¶0000000000000000__`````11``
`````````_¶¶¶¶¶¶¶¶¶000¶¶¶¶¶¶¶¶000000000000011_``_1¶¶¶0`
`````````_¶¶¶¶¶¶0¶¶000000¶¶¶¶¶¶¶000000000000100¶¶¶¶0_`_
`````````1¶¶¶¶¶0¶¶¶000000000¶¶¶¶¶¶000000000¶00¶¶01`````
`````````¶¶¶¶¶0¶0¶¶¶0000000000000¶0¶00000000011_``````_
````````1¶¶0¶¶¶0¶¶¶¶¶¶¶000000000000000000000¶11___11111
````````¶¶¶¶0¶¶¶¶¶00¶¶¶¶¶¶000000000000000000¶011111111_
```````_¶¶¶¶¶¶¶¶¶0000000¶0¶00000000000000000¶01_1111111
```````0¶¶¶¶¶¶¶¶¶000000000000000000000000000¶01___`````
```````¶¶¶¶¶¶0¶¶¶000000000000000000000000000¶01___1````
``````_¶¶¶¶¶¶¶¶¶00000000000000000000000000000011_111```
``````0¶¶0¶¶¶0¶¶0000000000000000000000000000¶01`1_11_``
``````¶¶¶¶¶¶0¶¶¶0000000000000000000000000000001`_0_11_`
``````¶¶¶¶¶¶¶¶¶00000000000000000000000000000¶01``_0_11`
``````¶¶¶¶0¶¶¶¶00000000000000000000000000000001```_1_11

          

''');
        break;
    }
  }
}
