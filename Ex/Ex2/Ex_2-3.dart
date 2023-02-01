import 'dart:io';

void main() {
  stdout.write("Input Name: ");
  String? name = stdin.readLineSync();
  stdout.write("Star Tri Size: ");
  String? number1 = stdin.readLineSync();
  stdout.write("Hi $name this is your star");
  for (int i = 0; i < int.parse(number1!); i++) {
    stdout.write("\n\n");
    stdout.write("\t");
    for (int x = 0; x <= i; x++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}
