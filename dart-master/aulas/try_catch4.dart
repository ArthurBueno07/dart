void main() {
  try {
    // variavel booleana
    dynamic variavel = true;
    // Tentando iterar 
    variavel++;
  } catch (e) {
    print('Erro !!! $e');
    print('-' * 70);
  }
}
