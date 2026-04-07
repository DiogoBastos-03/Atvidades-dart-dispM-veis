
import 'dart:io';

void main() {
  print('Quantos bois tem na fazenda?');
  int n = int.parse(stdin.readLineSync()!);
  
  List<int> numeros = [];
  List<double> pesos = [];
  
  for (int i = 0; i < n; i++) {
    print('Digite o número do boi ${i + 1}:');
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
    
    print('Digite o peso do boi ${i + 1}:');
    double peso = double.parse(stdin.readLineSync()!);
    pesos.add(peso);
  }
  

  while (true) {
    print('\nDeseja fazer uma pesquisa? (s/n)');
    String resposta = stdin.readLineSync()!;
    
    if (resposta == 'n') {
      print('Encerrando');
      break;
    }
    
    print('Digite o peso mínimo:');
    double pesoMin = double.parse(stdin.readLineSync()!);
    
    print('Digite o peso máximo:');
    double pesoMax = double.parse(stdin.readLineSync()!);
    
    print('\nBois com peso entre $pesoMin e $pesoMax:');
    bool achou = false;
    
    for (int i = 0; i < n; i++) {
      if (pesos[i] >= pesoMin && pesos[i] <= pesoMax) {
        print('Boi número ${numeros[i]} - Peso: ${pesos[i]} kg');
        achou = true;
      }
    }
    
    if (!achou) {
      print('Nenhum boi encontrado nesse intervalo.');
    }
  }
}