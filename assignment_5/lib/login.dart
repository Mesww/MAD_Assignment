import 'package:assignment_5/welcome.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  String username = '';
  String password = '';
  String output = '';
  bool c = false;
  bool ob = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              child: TextField(
                controller: name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Username'),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              margin: EdgeInsets.all(2),
              child: TextField(
                obscureText: ob,
                controller: pass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(ob ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          ob = !ob;
                        });
                      },
                    )),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (name.text.isNotEmpty && pass.text.isNotEmpty) {
                    setState(() {
                      username = name.text;
                      password = pass.text;
                      output = check(username, password);
                    });
                  }
                  if (c == true) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Welcome()),
                            settings: RouteSettings(arguments: output)));
                    output = '';
                  }

                  name.clear();
                  pass.clear();
                },
                child: Text('Login')),
            Text(
              output,
              style: TextStyle(color: Colors.red),
            )
          ],
        )),
      ),
    );
  }

  var account = [
    {'username': 'James', 'password': 'a1b1'},
    {'username': 'Lara', 'password': 'a2b2'},
    {'username': '', 'password': ''},
  ];

  String check(String username, String password) {
    for (int i = 0; i < account.length; i++) {
      if (username == account[i]['username'] &&
          password == account[i]['password']) {
        c = true;
        return 'Welcome ${account[i]['username']}';
      } else if (username == '' && password == '') {
        c = false;
        return '';
      }
    }
    c = false;
    return 'Wrong Username and Password';
  }
}
