import 'dart:io';

void main() {
  List<List<String>> tabuleiro = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' '],
  ];

  String jogadorAtual = 'X';

  while (true) {
    mostrarTabuleiro(tabuleiro);

    print('\nVez do jogador $jogadorAtual');

    print('Digite a linha (0, 1 ou 2):');
    int linha = int.parse(stdin.readLineSync()!);

    print('Digite a coluna (0, 1 ou 2):');
    int coluna = int.parse(stdin.readLineSync()!);

    if (tabuleiro[linha][coluna] == ' ') {
      tabuleiro[linha][coluna] = jogadorAtual;

      // após qualquer jogada vejo se o jogador atual venceu
      if (verificarVencedor(tabuleiro, jogadorAtual)) {
        mostrarTabuleiro(tabuleiro);
        print('\nJogador $jogadorAtual venceu!');
        break;
      }

      // após cada jogada, caso n tenha um vitorioso, vejo se terminou em empate
      if (verificarEmpate(tabuleiro)) {
        mostrarTabuleiro(tabuleiro);
        print('\nO jogo terminou em empate!');
        break;
      }

      // troca jogador
      if (jogadorAtual == 'X') {
        jogadorAtual = 'O';
      } else {
        jogadorAtual = 'X';
      }
      // caso ja tenha algo nessa posicao, ele n troca de jogador, e ele joga de novo
    } else {
      print('Posição já ocupada! Tente de novo.');
    }
  }
}

void mostrarTabuleiro(List<List<String>> tabuleiro) {
  print('\n${tabuleiro[0][0]} | ${tabuleiro[0][1]} | ${tabuleiro[0][2]}');
  print('--+---+--');
  print('${tabuleiro[1][0]} | ${tabuleiro[1][1]} | ${tabuleiro[1][2]}');
  print('--+---+--');
  print('${tabuleiro[2][0]} | ${tabuleiro[2][1]} | ${tabuleiro[2][2]}');
}

bool verificarVencedor(List<List<String>> tabuleiro, String jogador) {
  // verifica linhas
  for (int i = 0; i < 3; i++) {
    if (tabuleiro[i][0] == jogador &&
        tabuleiro[i][1] == jogador &&
        tabuleiro[i][2] == jogador) {
      return true;
    }
  }

  // verifica colunas
  for (int j = 0; j < 3; j++) {
    if (tabuleiro[0][j] == jogador &&
        tabuleiro[1][j] == jogador &&
        tabuleiro[2][j] == jogador) {
      return true;
    }
  }

  // verifica diagonal 
  if (tabuleiro[0][0] == jogador &&
      tabuleiro[1][1] == jogador &&
      tabuleiro[2][2] == jogador) {
    return true;
  }

  // verifica outra diagonal 
  if (tabuleiro[0][2] == jogador &&
      tabuleiro[1][1] == jogador &&
      tabuleiro[2][0] == jogador) {
    return true;
  }

  return false;
}

// verifica se todas as posicoes do tabuleiro ja fora preenchidas, se n tiver um vencedor, significa que empatou
bool verificarEmpate(List<List<String>> tabuleiro) {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (tabuleiro[i][j] == ' ') {
        return false;
      }
    }
  }

  return true;
}
