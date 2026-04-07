import 'dart:io';

void main() {

  print('Digite o tamanho do primeiro vetor:');
  int tamanho1 = int.parse(stdin.readLineSync()!);
  List<int> vetor1 = [];
  
  print('Digite os elementos do primeiro vetor separados por vírgula:');
  String entrada1 = stdin.readLineSync()!;
  List<String> partes1 = entrada1.split(',');
  for (int i = 0; i < tamanho1; i++) {
    vetor1.add(int.parse(partes1[i]));
  }
  
  print('Digite o tamanho do segundo vetor:');
  int tamanho2 = int.parse(stdin.readLineSync()!);
  List<int> vetor2 = [];
  
  print('Digite os elementos do segundo vetor separados por vírgula:');
  String entrada2 = stdin.readLineSync()!;
  List<String> partes2 = entrada2.split(',');
  for (int i = 0; i < tamanho2; i++) {
    vetor2.add(int.parse(partes2[i]));
  }
  
  List<int> vetor3 = [...vetor1, ...vetor2];
  vetor3.sort();
  
  print('Vetor ordenado resultante:');
  for (int i = 0; i < vetor3.length; i++) {
    print(vetor3[i]);
  }
}