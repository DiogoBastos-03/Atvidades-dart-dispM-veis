import 'dart:io';
import 'dart:math';

// Função para calcular o fatorial
double fatorial(int n) {
  double res = 1;
  for (int i = 2; i <= n; i++) res *= i;
  return res;
}

void main() {
  // 1. Entrada de dados
  stdout.write('Digite o número de termos: ');
  int nTermos = int.parse(stdin.readLineSync()!);
  
  stdout.write('Digite o valor de X: ');
  double x = double.parse(stdin.readLineSync()!);

  double s = 0;
  int denominadorAtual = 1;
  bool subindo = true; // Controla se o fatorial está indo para 4 ou voltando para 1

  print('\nTermos gerados:');
  
  for (int i = 0; i < nTermos; i++) {
    int expoente = i + 2; // Começa em 2 conforme a imagem
    
    // Calcula o termo atual da série
    double termo = pow(x, expoente) / fatorial(denominadorAtual);
    s += termo;

    print('T${i + 1}: $x^$expoente / $denominadorAtual! = ${termo.toStringAsFixed(2)}');

    // Lógica para oscilar o denominador (1, 2, 3, 4, 3, 2, 1...)
    if (subindo) {
      denominadorAtual++;
      if (denominadorAtual == 4) subindo = false;
    } else {
      denominadorAtual--;
      if (denominadorAtual == 1) subindo = true;
    }
  }

  print('\n---');
  print('O valor final de S para $nTermos termos é: ${s.toStringAsFixed(4)}');
}