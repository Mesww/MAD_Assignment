import 'dart:io';

void main(List<String> args) {
  int i = 0;
  while (true) {
    stdout.write("Count = $i");
    stdout.write("\nIncrease (+) or decrease (-) or exit (0): ");
    String? ip = stdin.readLineSync();
    if (ip == "0") {
      stdout.write("Good Bye");
      break;
    }
    if (ip != null) {
      switch (ip) {
        case "+":
          i++;
          break;
        case "-":
          i--;
          break;
        default:
          stdout.write("Error");
          break;
      }
    }
  }
}
