void main(List<String> args) {
  int n = 20;
  for (int i = 1; i <= n; i++) {
    print("For n=$i");
    if (i % 5 == 0 && i % 3 == 0) {
      print("Fizz Buzz");
    } else if (i % 5 == 0) {
      print("Buzz");
    } else if (i % 3 == 0) {
      print("Fizz");
    }
  }
}
