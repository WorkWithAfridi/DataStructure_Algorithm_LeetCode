void main(List<String> args) {
  String expression = "ABC";
  int sum = 0;
  List<String> expressionAsList = expression.split("").toList();
  for (int i = 0; i < expressionAsList.length; i++) {
    String currentChar = expressionAsList.elementAt(i);
    int charValue = valFromChar(char: currentChar);
    int powerVal = expressionAsList.length - i - 1;
    int additionalAmount = get26PowerX(x: powerVal);
    sum = sum + charValue * (additionalAmount);
  }
  print(sum);
}

int valFromChar({required String char}) {
  return char.codeUnits.first - 64;
}

int get26PowerX({required int x}) {
  double val = 1;
  for (int i = 0; i < x; i++) {
    val = val * 26;
  }
  return val.floor();
}
