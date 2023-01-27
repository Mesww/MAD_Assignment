import 'dart:io';

void main(List<String> args) {
  while (true) {
    stdout.write("Enter temperature or q to quit: ");
    String? input = stdin.readLineSync();
    if (input == "q") {
      stdout.write("\nGood bye\n");
      break;
    }
    int? cc = int.tryParse(input!);
    if (cc != null) {
      if (cc < 25) {
        stdout.write("\nCold\n");
      } else if (cc >= 25 && cc <= 30) {
        stdout.write("\nWarm\n");
      } else if (cc > 30) {
        stdout.write("\nHot\n");
      }
    } else {
      stdout.write("\nError please input only an integer or q\n");
    }
  }
}
