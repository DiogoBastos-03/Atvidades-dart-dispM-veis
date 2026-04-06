import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  // random.nextInt(100) gera de 0 a 99, somamos 1 para o intervalo [1, 100]
  int numeroSecreto = random.nextInt(100) + 1;
  
  int minimo = 1;
  int maximo = 100;
  int palpite = 0;

   
  print('Tente adivinhar o número entre $minimo e $maximo');

  while (palpite != numeroSecreto) {
    print('\nSeu palpite (entre $minimo e $maximo): ');
     
    String? entrada = stdin.readLineSync();
    palpite = int.tryParse(entrada ?? '') ?? 0;

     
    if (palpite < minimo || palpite > maximo) {
      print('Atenção! Digite um valor apenas entre $minimo e $maximo.');
      continue;
    }

    if (palpite < numeroSecreto) {
      print('O número secreto é MAIOR.');
      minimo = palpite + 1; // Ajusta o limite inferior
    } else if (palpite > numeroSecreto) {
      print('O número secreto é MENOR.');
      maximo = palpite - 1; // Ajusta o limite superior
    } else {
      print('Parabéns! Você acertou. O número era $numeroSecreto.');
    }

    if (palpite != numeroSecreto) {
      print('Novo intervalo: entre $minimo e $maximo.');
    }
  }
}