void main() {

  List<int> v1 = [1, 2, 3, 4];
  List<int> v2 = [2, 3, 4, 5];
  List<int> v3 = [0, 2, 3, 4];
  List<int> v4 = [2, 3, 4, 9];

  // gera o 5 vetor com os valores ordenados
  List<int> v5 = [];

  //sso junta os vetores
  v5.addAll(v1);
  v5.addAll(v2);
  v5.addAll(v3);
  v5.addAll(v4);

  // ordena o vetor
  v5.sort();

  // valores que aparecem em todos os vetores
  List<int> intersecao = [];

  for (int i = 0; i < v1.length; i++) {
    int valor = v1[i];

    if (v2.contains(valor) &&
        v3.contains(valor) &&
        v4.contains(valor) &&
        !intersecao.contains(valor)) {
      intersecao.add(valor);
    }
  }


  print('Vetor 1: $v1');
  print('Vetor 2: $v2');
  print('Vetor 3: $v3');
  print('Vetor 4: $v4');

  print('\n5º vetor ordenado: $v5');
  print('Interseção dos 4 vetores: $intersecao');
}