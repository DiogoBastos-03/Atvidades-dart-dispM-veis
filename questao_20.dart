import 'dart:io';

void main() {
  List<List<String>> mapa = [
    ['#', '#', '#', '#', '#', '#', '#', '#'],
    ['#', 'E', '.', '#', '.', '.', '.', '#'],
    ['#', '#', '.', '#', '.', '#', '.', '#'],
    ['#', '.', '.', '.', '.', '#', '.', '#'],
    ['#', '.', '#', '#', '#', '#', '.', '#'],
    ['#', '.', '.', '.', '.', '.', '.', '#'],
    ['#', '#', '#', '#', '.', '#', 'S', '#'],
    ['#', '#', '#', '#', '#', '#', '#', '#'],
  ];

  int linhaJogador = 1;
  int colunaJogador = 1;

  print('Bem vindo ao labirinto!');
  print('Use w (cima), s (baixo), a (esquerda), d (direita)');
  print('Chegue no S para vencer!\n');

  while (true) {
    for (int i = 0; i < mapa.length; i++) {
      for (int j = 0; j < mapa[i].length; j++) {
        if (i == linhaJogador && j == colunaJogador) {
          stdout.write('P '); 
        } else {
          stdout.write('${mapa[i][j]} ');
        }
      }
      print('');
    }

    stdout.write('\nPara onde quer ir? ');
    String? comando = stdin.readLineSync();

    int linhaAntiga = linhaJogador;
    int colunaAntiga = colunaJogador;

    if (comando == 'w') {
      linhaJogador = linhaJogador - 1;
    } else if (comando == 's') {
      linhaJogador = linhaJogador + 1;
    } else if (comando == 'a') {
      colunaJogador = colunaJogador - 1;
    } else if (comando == 'd') {
      colunaJogador = colunaJogador + 1;
    } else {
      print('Comando invalido! Use w, a, s ou d');
      continue;
    }

    if (mapa[linhaJogador][colunaJogador] == '#') {
      print('Ops! Bateu na parede!');
      linhaJogador = linhaAntiga;
      colunaJogador = colunaAntiga;
    }

    if (mapa[linhaJogador][colunaJogador] == 'S') {
      print('\n*** PARABENS! Voce venceu! ***');
      break;
    }

    print('\n' * 2);
  }
}