void main(List<String> args) {
  List<String> myListOfString = ["abcdefg", "abcdefg", "abcdefg", "abcde3"];
  // List<String> myListOfString = [
  //   "abcdefg",
  //   "a",
  //   "abcdefg",
  //   "abcdefg",
  //   "abcde3"
  // ];
  // List<String> myListOfString = ["abcdefg"];
  String currentChar = "";
  String checkChar = "";
  int count = 0;
  int commonPrefix = 1;
  if (myListOfString.length > 1) {
    commonPrefix = 0;
    for (int i = 0; i < myListOfString[0].length; i++) {
      currentChar = myListOfString[0][i];
      for (int j = 0; j < myListOfString.length; j++) {
        String currentCheckString = myListOfString[j];
        if (currentCheckString.length > i) {
          checkChar = currentCheckString[i];
          if (currentChar == checkChar) {
            count++;
          }
          if (count == myListOfString.length) {
            commonPrefix++;
          }
        }
      }
      count = 0;
    }
  }
  print("Longest common prefix: $commonPrefix");
}
