void main() {
  List<int> v1 = [1, 2, 3];
  List<int> v2 = [4, 5, 6];

  List<int> v3 = somaVetores(v1, v2);

  int somaTotal = somaElementos(v3);

  print('Vetor 1: $v1');
  print('Vetor 2: $v2');
  print('Vetor soma: $v3');
  print('Soma total: $somaTotal');
}

// soma os vetores
List<int> somaVetores(List<int> a, List<int> b) {
  List<int> resultado = [];

  for (int i = 0; i < a.length; i++) {
    resultado.add(a[i] + b[i]);
  }

  return resultado;
}

// soma todos os elementos de um vetor
int somaElementos(List<int> vetor) {
  int soma = 0;

  for (int i = 0; i < vetor.length; i++) {
    soma += vetor[i];
  }

  return soma;
}