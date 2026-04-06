void main() {
double total = 0;

  const Map<String, double> boloPrecos = {
    'ovos': 5.5,
    'chocolate': 7.5,
    'cenoura': 6.5,
    'morango' : 6.9,
    'leite' : 4.9,
  };

// simulando o pedido
const List ordem = ['chocolate','castanha','morango','limao'];

for(var bolo in ordem) {
 var valor = boloPrecos[bolo];
 if (valor != null){
  total += valor;
 } else {
  print('${bolo} não está no cardápio');
 }
}

print('Total = ${total}');

}
