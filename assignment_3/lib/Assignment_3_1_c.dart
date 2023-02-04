import 'package:flutter/material.dart';

var account = [
  {'username': 'admin', 'password': '1234', 'role': 'admin'},
  {'username': 'bbb', 'password': '2222', 'role': 'user'},
  {'username': '', 'password': '', 'role': ''},
];

String check(String username, String password) {
  for (int i = 0; i < account.length; i++) {
    if (username == account[i]['username'] &&
        password == account[i]['password']) {
      return 'Welcome ${account[i]['role']}';
    } else if (username == '' && password == '') {
      return '';
    }
  }
  return 'Wrong Username and Password';
}

MaterialColor checkcolor(String username, String password) {
  if (check(username, password) == "Wrong Username and Password") {
    return Colors.red;
  } else {
    return Colors.green;
  }
}
