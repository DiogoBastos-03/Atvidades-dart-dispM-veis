import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    // 1. split('') transforma a string em uma lista de caracteres ['6', '0', '4', '2']
    // 2. reversed inverte a ordem da lista
    // 3. join('') junta tudo de volta em uma única string "2406"
    String invertido = entrada.split('').reversed.join('');

    print("Impressão: $invertido");
  }
}