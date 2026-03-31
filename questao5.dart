class RecemNascido {
  String nome;
  String sexo;
  double peso;

  RecemNascido(this.nome, this.sexo, this.peso);

  bool get baixoPeso {
    return peso >= 0 && peso <= 2;
  }

  bool get normal {
    return peso > 2 && peso <= 4;
  }

  bool get altoPeso {
    return peso > 4;
  }
}

void main() {
  double maiorPesoF = 0;
  String nomeMaiorPesoF = '';
  double qtdBaixoPeso = 0;
  double qtdNormal = 0;
  double qtdAltoPeso = 0;

  List<RecemNascido> recemNascidos = [
    RecemNascido('Alice', 'F', 2.5),
    RecemNascido('Bob', 'M', 1.8),
    RecemNascido('Carol', 'F', 3.2),
    RecemNascido('David', 'M', 4.5),
    RecemNascido('Eve', 'F', 2.0),
    RecemNascido('Frank', 'M', 3.8),
  ];

  for (var recemNascido in recemNascidos) {
    if (recemNascido.baixoPeso) {
      print('${recemNascido.nome},${recemNascido.sexo} tem baixo peso.');
      qtdBaixoPeso++;
    } else if (recemNascido.normal) {
      print('${recemNascido.nome},${recemNascido.sexo} tem peso normal.');
      qtdNormal++;
    } else if (recemNascido.altoPeso) {
      print('${recemNascido.nome},${recemNascido.sexo} tem alto peso.');
      qtdAltoPeso++;
    }

    if (recemNascido.sexo == 'F' && recemNascido.peso > maiorPesoF) {
      maiorPesoF = recemNascido.peso.toDouble();
      nomeMaiorPesoF = recemNascido.nome;
    }
  }

  double percentualBaixoPeso = (qtdBaixoPeso / recemNascidos.length) * 100;
  double percentualNormal = (qtdNormal / recemNascidos.length) * 100;
  double percentualAltoPeso = (qtdAltoPeso / recemNascidos.length) * 100;

  print(
    'Recém nascida com maior peso: ${nomeMaiorPesoF.isEmpty ? 'Nenhuma' : nomeMaiorPesoF}',
  );
  print('Percentual de recém nascidos com baixo peso: $percentualBaixoPeso%');
  print('Percentual de recém nascidos com peso normal: $percentualNormal%');
  print('Percentual de recém nascidos com alto peso: $percentualAltoPeso%');
}
