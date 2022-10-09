void main(List<String> args) {
  // List expressions = ["2", "1", "+", "3", "*"];
  // List expressions = ["4", "13", "5", "/", "+"];
  List expressions = [
    "10",
    "6",
    "9",
    "3",
    "+",
    "-11",
    "*",
    "/",
    "*",
    "17",
    "+",
    "5",
    "+"
  ];
  List numbers = [];
  double adjustedNumber = 0;
  for (String x in expressions) {
    switch (x) {
      case "+":
        double a = numbers.last;
        numbers.removeLast();
        double b = numbers.last;
        numbers.removeLast();
        adjustedNumber = (a + b).toDouble();
        numbers.add(adjustedNumber);
        break;
      case "-":
        double a = numbers.last;
        numbers.removeLast();
        double b = numbers.last;
        numbers.removeLast();
        adjustedNumber = (a - b).toDouble();
        numbers.add(adjustedNumber);
        break;
      case "*":
        double a = numbers.last;
        numbers.removeLast();
        double b = numbers.last;
        numbers.removeLast();
        adjustedNumber = (a * b).toDouble();
        numbers.add(adjustedNumber);
        break;
      case "/":
        double a = numbers.last;
        numbers.removeLast();
        double b = numbers.last;
        numbers.removeLast();
        adjustedNumber = (b / a);
        if (adjustedNumber >= 1) {
          adjustedNumber = adjustedNumber.floor().toDouble();
        } else {
          adjustedNumber = adjustedNumber.ceil().toDouble();
        }
        numbers.add(adjustedNumber);
        break;
      default:
        numbers.add(double.parse(x));
    }
  }
  print(adjustedNumber);
}
