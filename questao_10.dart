import 'dart:io';

void main() {
  // Variáveis de controle e estatísticas
  int totalMasc = 0;
  int totalFem = 0;
  
  int somaIdadeHomensExp = 0;
  int contHomensExp = 0;
  
  int contHomensMais45 = 0;
  
  int contFemMenos30Exp = 0;
  
  String? nomeFemMaisJovemExp;
  int menorIdadeFemExp = 200; // Valor alto inicial para comparação

  print('--- Levantamento de Perfil de Candidatos ---');

  while (true) {
    stdout.write('\nNome (ou "FIM" para encerrar): ');
    String nome = stdin.readLineSync()!;
    if (nome.toUpperCase() == 'FIM') break;

    stdout.write('Sexo (M/F): ');
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Idade: ');
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write('Tem experiência? (S/N): ');
    String temExp = stdin.readLineSync()!.toUpperCase();
    bool possuiExperiencia = (temExp == 'S');

    // Lógica para Homens (M)
    if (sexo == 'M') {
      totalMasc++;
      
      // b) Idade média dos homens com experiência
      if (possuiExperiencia) {
        somaIdadeHomensExp += idade;
        contHomensExp++;
      }
      
      // c) Homens com mais de 45 anos
      if (idade > 45) {
        contHomensMais45++;
      }
    } 
    // Lógica para Mulheres (F)
    else if (sexo == 'F') {
      totalFem++;

      // d) Mulheres < 30 anos com experiência
      if (idade < 30 && possuiExperiencia) {
        contFemMenos30Exp++;
      }

      // e) Mulher com a menor idade e com experiência
      if (possuiExperiencia) {
        if (idade < menorIdadeFemExp) {
          menorIdadeFemExp = idade;
          nomeFemMaisJovemExp = nome;
        }
      }
    }
  }

  // --- Saída dos Resultados ---
  print('\n================ RELATÓRIO FINAL ================');
  
  // a) Total por sexo
  print('a) Total Masculino: $totalMasc | Total Feminino: $totalFem');

  // b) Média de idade homens com experiência
  if (contHomensExp > 0) {
    double mediaIdade = somaIdadeHomensExp / contHomensExp;
    print('b) Idade média dos homens com experiência: ${mediaIdade.toStringAsFixed(1)} anos');
  } else {
    print('b) Nenhum homem com experiência cadastrado.');
  }

  // c) Porcentagem homens > 45 anos
  if (totalMasc > 0) {
    double percMasc45 = (contHomensMais45 / totalMasc) * 100;
    print('c) Porcentagem de homens > 45 anos: ${percMasc45.toStringAsFixed(2)}%');
  }

  // d) Mulheres < 30 com experiência
  print('d) Mulheres com menos de 30 anos e com experiência: $contFemMenos30Exp');

  // e) Nome da candidata mais jovem com experiência
  if (nomeFemMaisJovemExp != null) {
    print('e) Candidata mais jovem com experiência: $nomeFemMaisJovemExp ($menorIdadeFemExp anos)');
  } else {
    print('e) Nenhuma candidata feminina com experiência cadastrada.');
  }
}