void main () {
  int a = 1;
  int b = 5;
  int c = 100;

  int termos = 2;
  
  int count = 0;

  while(count < termos){
    if(count < termos) {
      print(a);
      count++;
    }

    if(count < termos) {
      print(b);
      count++;
    }

    if(count < termos) {
      print(c);
      count++;
    }

    a *= 2;
    b += 5;
    c -= 10;
  }

}