void main() {
  List<int> numeros = [3, 8, 5, 3, 8, 7, 3, 7, 3, 7];

  // fiz com map pq é mto mais fácil, guardo na msm variável o número e a quantidade de vezes que ele aparece 
  Map<int, int> frequencia = {};

  for (var num in numeros) {
    // caso o número ainda n tenha aparecido no map, eu inicio ele com valor 1
    if (frequencia[num] == null) {
      frequencia[num] = 1;
    // caso ele ja tenha no map, só adiciono +1, pq ele apareceu mais uma vez
    } else {
      frequencia[num] = frequencia[num]! + 1;
    }
  }

  frequencia.forEach((numero, qtd) {
    print("$numero - $qtd");
  });
}