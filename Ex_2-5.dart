import 'dart:io';

void main() {
  Map<String, dynamic> student = {'name': '', 'id': 0, 'age': 0};
  stdout.write("Input Name: ");
  student['name'] = stdin.readLineSync();
  stdout.write("Input ID: ");
  student['id'] = stdin.readLineSync();
  stdout.write("Input Age: ");
  student['age'] = stdin.readLineSync();

  // output
  print('Output: Hi ${student['name']} this is your Student Object');
  print('Student Name: ${student['name']}');
  print('Student ID: ${student['id']}');
  print('Age: ${student['age']}');
}
