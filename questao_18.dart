import 'dart:io';

void main() {
  String palavraSecreta = 'dart';
  List<String> letrasDescobertas = List.filled(palavraSecreta.length, '_'); // imprimo _ com a msm quantidade de caracteres da palavra secreta
  List<String> letrasTentadas = [];
  int tentativasRestantes = 6;

  print('Forca');

  while (tentativasRestantes > 0 && letrasDescobertas.contains('_')) {
    print('\nPalavra: ${letrasDescobertas.join(' ')}');
    print('Letras tentadas: ${letrasTentadas.join(', ')}');
    print('Tentativas restantes: $tentativasRestantes');

    stdout.write('Digite uma letra: ');
    String? entrada = stdin.readLineSync();

    // caso o usuario n digite nd
    if (entrada == null || entrada.isEmpty) {
      print('Digite uma letra válida.');
      continue;
    }

    // caso o usuario digite mais que uma letra, ele so vai considerar a primeira letra, e minúscula
    String letra = entrada[0].toLowerCase();

    if (letrasTentadas.contains(letra)) {
      print('Você já tentou essa letra.');
      continue;
    }

    letrasTentadas.add(letra);

    // caso a letra estja na palavra, pecorre toda a palavra para revelar suas posicoes
    if (palavraSecreta.contains(letra)) {
      for (int i = 0; i < palavraSecreta.length; i++) {
        if (palavraSecreta[i] == letra) {
          letrasDescobertas[i] = letra;
        }
      }
      print('Acertou!');
    } else {
      tentativasRestantes--;
      print('Errou!');
    }
  }

  if (!letrasDescobertas.contains('_')) {
    print('\nParabéns! Você venceu!');
    print('A palavra era: $palavraSecreta');
  } else {
    print('\nVocê perdeu!');
    print('A palavra era: $palavraSecreta');
  }
}