void main(List<String> args) {
  String x = "This is my string";
  int lengthOfLastWord = x.substring(x.lastIndexOf(" ") + 1, x.length).length;
  print("Length of last word is: $lengthOfLastWord");
}
