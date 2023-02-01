import 'dart:io';

void main(List<String> args) {
  int i = 0;
  while (true) {
    stdout.write('Count = $i \n');
    stdout.write('Increase(+) or decrease(-) or exit (0): ');
    String? input = stdin.readLineSync();
    if (input == '0') {
      break;
    } else if (input == '+') {
      i++;
    } else if (input == '-') {
      i--;
    } else {
      stdout.write('Error\n');
    }
  }
}
