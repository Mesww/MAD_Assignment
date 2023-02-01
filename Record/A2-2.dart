import 'dart:io';

var account = [
  {'username': 'aaa', 'password': '1111', 'role': 'admin'},
  {'username': 'bbb', 'password': '2222', 'role': 'user'},
];

void main() {
  stdout.write('---Login---\n');
  stdout.write('Username: ');
  String? username = stdin.readLineSync();
  stdout.write('Password: ');
  String? password = stdin.readLineSync();
  stdout.write(login(username!, password!));
}

String login(String username, String password) {
  for (int i = 0; i < account.length; i++) {
    if (username == account[i]['username'] &&
        password == account[i]['password']) {
      return 'Welcome ${account[i]['role']}';
    }
  }
  return 'Wrong login';
}
