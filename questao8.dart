class Candidato {
  String codigo;
  String curso;
  String nome;
  String sexo;
  int pontuacao;

  Candidato(this.codigo, this.curso, this.nome, this.sexo, this.pontuacao);

  bool get aprovado {
    return pontuacao > 2500;
  }
}

void main() {
  int menorValorM = 5000;
  String nomeValorM = '';
  int maiorValorSi = 0;
  String codValorSi = '';
  int qtdMasculina = 0;
  int qtdFeminina = 0;

  List<Candidato> candidatos = [
    Candidato('2021001', 'Engenharia', 'Alice', 'F', 2800),
    Candidato('2021002', 'Medicina', 'Pedro', 'M', 2400),
    Candidato('2021003', 'Direito', 'Carol', 'F', 2600),
    Candidato('2021004', 'Sistemas de Informação', 'David', 'M', 2300),
    Candidato('2021005', 'Medicina', 'Maria', 'F', 2700),
    Candidato('2021006', 'Sistemas de Informação', 'Jorge', 'M', 2200),
  ];

  for (var candidato in candidatos) {
    if (candidato.codigo == '0000') {
      continue;
    }

    if (candidato.aprovado) {
      print('${candidato.codigo} (${candidato.nome}) - ${candidato.pontuacao}');
    }

    if (candidato.sexo == 'M' && candidato.pontuacao < menorValorM) {
      menorValorM = candidato.pontuacao.toInt();
      nomeValorM = candidato.nome;
    }

    if (candidato.curso == 'Sistemas de Informação' &&
        candidato.pontuacao > maiorValorSi) {
      maiorValorSi = candidato.pontuacao.toInt();
      codValorSi = candidato.codigo;
    }

    if (candidato.sexo == 'M') {
      qtdMasculina++;
    } else if (candidato.sexo == 'F') {
      qtdFeminina++;
    }
  }
  ;

  double percentualM = (qtdMasculina / candidatos.length) * 100;
  double percentualF = (qtdFeminina / candidatos.length) * 100;

  print(
    'Candidato masculino com menor pontuação: ${nomeValorM.isEmpty ? 'Nenhum' : nomeValorM} (${menorValorM})',
  );
  print(
    'Código do candidato de Sistemas de Informação com maior pontuação: ${codValorSi.isEmpty ? 'Nenhum' : codValorSi} ',
  );
  print(
    'Quantidade de candidatos masculinos: $percentualM%',
  );
  print(
    'Quantidade de candidatos femininos: $percentualF%',
  );
}
