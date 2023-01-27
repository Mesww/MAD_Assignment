import 'dart:ffi';
import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("=== Area calculator === \nShape\n1. Square\n2.Circle");
  stdout.write("\nChoose 1-2...");
  String? input = stdin.readLineSync();

  if (input != null) {
    int? ip = int.tryParse(input);
    if (ip == 1) {
      stdout.write("\Enter size: ");
      String? size = stdin.readLineSync();
      int? s = int.tryParse(size!);
      if (s != null) {
        square(s);
      }
    } else if (ip == 2) {
      stdout.write("\Enter size: ");
      String? size = stdin.readLineSync();
      int? r = int.tryParse(size!);
      if (r != null) {
        circle(r);
      }
    } else {
      stdout.write("Please input only integer");
    }
  }
}

void square(int size) {
  stdout.write("Area if square = ${pow(size, size)}");
}

void circle(var r) {
  stdout.write("Area if square = ${pow(r, r) * pi}");
}
