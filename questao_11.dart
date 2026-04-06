import 'dart:io';

void main() {
  const valorHora = 12.30;
  
  List<double> salariosHomens = [];
  List<double> salariosMulheres = [];

  while (true) {
    print("--- Cadastro de Professor (9999 para sair) ---");
    stdout.write("Código: ");
    String codigo = stdin.readLineSync()!;

    if (codigo == "9999") break;

    stdout.write("Nome: ");
    String nome = stdin.readLineSync()!;

    stdout.write("Sexo (M/F): ");
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write("Número de horas de aula no mês: ");
    double horas = double.parse(stdin.readLineSync()!);

    // Cálculos
    double salarioBruto = horas * valorHora;
    double desconto = (sexo == 'M') ? 0.10 : 0.05;
    double salarioLiquido = salarioBruto * (1 - desconto);

    // Armazenar para média final
    if (sexo == 'M') {
      salariosHomens.add(salarioLiquido);
    } else {
      salariosMulheres.add(salarioLiquido);
    }

    // Listagem individual
    print("\n--- Dados do Professor ---");
    print("Código: $codigo");
    print("Nome: $nome");
    print("Salário Bruto: R\$ ${salarioBruto.toStringAsFixed(2)}");
    print("Salário Líquido: R\$ ${salarioLiquido.toStringAsFixed(2)}");
    print("-" * 30 + "\n");
  }

  // Cálculo das médias
  double mediaM = salariosHomens.isEmpty 
      ? 0 : salariosHomens.reduce((a, b) => a + b) / salariosHomens.length;
      
  double mediaF = salariosMulheres.isEmpty 
      ? 0 : salariosMulheres.reduce((a, b) => a + b) / salariosMulheres.length;

  print("=== RESULTADO FINAL ===");
  print("Média Salário Líquido Homens: R\$ ${mediaM.toStringAsFixed(2)}");
  print("Média Salário Líquido Mulheres: R\$ ${mediaF.toStringAsFixed(2)}");
}