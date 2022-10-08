void main(List<String> args) {
  String x =
      "We say we are walking the dog, but the dog always leads. We need more werkin and less twerkin if you ask me.";
  String reverseX = "";
  for (String y in x.split("").toList().reversed) {
    reverseX += y;
  }
  print(reverseX);
}
