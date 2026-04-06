void main() {
  print('Números entre 1000 e 9999 com a característica especial:');
  print('---------------------------------------------------------');

  for (int i = 1000; i <= 9999; i++) {
    // 1. Separa o número em duas partes
    // Ex: 3025 -> parte1 = 30, parte2 = 25
    int parte1 = i ~/ 100; 
    int parte2 = i % 100;

    // 2. Soma as duas partes
    int soma = parte1 + parte2;

    // 3. Eleva a soma ao quadrado (ou multiplica por ela mesma)
    int quadradoDaSoma = soma * soma;

    // 4. Verifica se o resultado é igual ao número original
    if (quadradoDaSoma == i) {
      print('$i: ($parte1 + $parte2 = $soma) -> $soma * $soma = $quadradoDaSoma');
    }
  }
}