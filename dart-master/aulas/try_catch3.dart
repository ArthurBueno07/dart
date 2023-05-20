void main() {
  try {
    var list = [1, 2, 3, 4];
    // list.toUpperCase();
  } catch (e) {
    if (e is NoSuchMethodError) {
      print('Error: o método chamado não exite. ');
      print('-' * 70);
    } else {
      print('Ocorreu um erro $e');
      print('-' * 70);
    }
  }
}
