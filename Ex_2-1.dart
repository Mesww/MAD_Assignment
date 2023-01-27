import 'dart:io';

void main() {
  stdout.write("Input Name: ");
  String? name = stdin.readLineSync();
  stdout.write("Input number1: ");
  String? number1 = stdin.readLineSync();
  stdout.write("Input number2: ");
  String? number2 = stdin.readLineSync();

  int num1 = int.parse(number1!);
  int num2 = int.parse(number2!);

  print("Name : $name");
  print("Number 1 : $num1");
  print("Number 2 : $num2");
  print("Hi $name > num1+num2 = ${num1 + num2}");
  print("Hi $name > num1-num2 = ${num1 - num2}");
  print("Hi $name > num1*num2 = ${num1 * num2}");
  print("Hi $name > num1/num2 = ${num1 / num2}");
  print("Hi $name > num1~/num2 = ${num1 ~/ num2}");
  print("Hi $name > num1%num2 = ${num1 % num2}");
}
