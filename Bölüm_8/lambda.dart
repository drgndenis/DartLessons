/*
 * Lambda: İsmi olmayan fonksiyonlardır. Dartta her fonksiyon aslında bir nesnedir. 
 */

void main(List<String> args) {
  // Lambda function
  Function function = (int fnum, int snum) {
    int sum = fnum + snum;
    print(sum);
  };

  function(2, 5);

  var f2 = (int number) => number * 2;
  print(f2(4));
}

// Normal function
void addUpTheNumbers(int fnum, int snum) {
  int sum = fnum + snum;
  print(sum);
}
