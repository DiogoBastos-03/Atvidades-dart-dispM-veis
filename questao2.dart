import 'dart:math';

// calcula o fatorial
int fatorial(int n) {
  int resultado = 1;
  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }
  return resultado;
}

void main() {
  // Quantidade de termos
  int termos = 1;
  double soma = 0;

  int base = 3;
  int numeroFatorial = 4;
  int denominador = 5;

  for (int i = 1; i <= termos; i++) {
    int fat = fatorial(numeroFatorial);
    double termo = pow(base, fat).toDouble() / denominador;
    soma += termo;

    base += 2;
    numeroFatorial += 4;
    denominador += 5;
  }

  print(soma);
}
