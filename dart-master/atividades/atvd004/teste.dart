import 'dart:io';

dynamic buscarUsuario(Map<String, dynamic> mapa, {String? nome}) {
  if (nome == null) {
    stdout.write('Digite o nome do usuário que deseja buscar: ');
    nome = stdin.readLineSync();
  }

  if (mapa.containsKey(nome)) {
    return mapa[nome];
  } else {
    return null;
  }
}

void main() {
  Map<String, dynamic> cadastros = {
    'João': {'idade': 25, 'email': 'joao@example.com'},
    'Maria': {'idade': 30, 'email': 'maria@example.com'},
    'Carlos': {'idade': 40, 'email': 'carlos@example.com'}
  };

  dynamic usuarioEncontrado = buscarUsuario(cadastros);
  if (usuarioEncontrado != null) {
    print('Usuário encontrado: $usuarioEncontrado');
  } else {
    print('Usuário não encontrado.');
  }
}
