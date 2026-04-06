class Aluno {
  String matricula = '';
  String nome = '';
  String sexo = '';
  List<double> notas = [];
  int faltas = 0;

  Aluno(this.matricula, this.nome, this.sexo, this.notas, this.faltas);

  double get media {
    return (notas[0] + notas[1] + notas[2]) / 3;
  }

  bool get aprovado {
    return media >= 7.0 && faltas <= 18;
  }
}

void main() {
  double mediaTurma = 0;
  double mediaFeminina = 0;
  double percentualAprovados = 0;
  double maiorValorM = 0;
  String nomeMaiorValorM = '';
  double maiorValorF = 0;
  String nomeMaiorValorF = '';
  int qtdFeminina = 0;
  int totalValidos = 0;

  List<Aluno> alunos = [
    Aluno('00000', 'Alice', 'F', [8.0, 7.5, 9.0], 2),
    Aluno('00000', 'Caio', 'M', [6.0, 5.5, 7.0], 4),
    Aluno('123456', 'Carol', 'F', [9.0, 8.5, 9.5], 1),
    Aluno('2021004', 'David', 'M', [7.0, 6.5, 8.0], 3),
    Aluno('2021005', 'Larissa', 'F', [6.5, 7.0, 6.0], 19),
    Aluno('2021006', 'João', 'M', [8.5, 9.0, 8.0], 1),
  ];

  if (alunos.isEmpty) {
    print('Nenhum aluno foi cadastrado.');
    return;
  }

  for (var aluno in alunos) {

    if (aluno.matricula == '00000') {
      continue;
    }

    totalValidos++;
    mediaTurma += aluno.media;

    if (aluno.aprovado) {
      percentualAprovados++;
    }

    if (aluno.sexo == 'F') {
      mediaFeminina += aluno.media;
      qtdFeminina++;
    }

    if (aluno.sexo == 'M' && aluno.aprovado && aluno.media > maiorValorM) {
      maiorValorM = aluno.media;
      nomeMaiorValorM = aluno.nome;
    }

    if (aluno.sexo == 'F' && aluno.aprovado && aluno.media > maiorValorF) {
      maiorValorF = aluno.media;
      nomeMaiorValorF = aluno.nome;
    }
  }


  print('Média da turma: ${(mediaTurma / totalValidos).toStringAsFixed(2)}');
  print(
    'Percentual de aprovados: ${((percentualAprovados / totalValidos) * 100).toStringAsFixed(2)}%',
  );
  print(
    'Homem aprovado com maior média: ${nomeMaiorValorM.isEmpty ? 'Nenhum' : nomeMaiorValorM}',
  );
  print(
    'Mulher aprovada com maior média: ${nomeMaiorValorF.isEmpty ? 'Nenhum' : nomeMaiorValorF}',
  );
  print(
    'Média das alunas: ${qtdFeminina > 0 ? (mediaFeminina / qtdFeminina).toStringAsFixed(2) : '0.00'}',
  );
}
