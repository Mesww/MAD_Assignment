import 'package:flutter/material.dart';
import 'package:assignment_3_1/Assignment_3_1_c.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = '';
  String password = '';
  TextEditingController usname = TextEditingController();
  TextEditingController psword = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * 0.05, vertical: height * 0.03),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0, vertical: height * 0.003),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0, vertical: height * 0.0095),
                      // color: Colors.red,
                      child: const Text(
                        'Username',
                        style: TextStyle(fontSize: 15),
                      )),
                ],
              ),
              TextField(
                controller: usname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: ' Username'),
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0, vertical: height * 0.0003),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0, vertical: height * 0.0095),
                      // color: Colors.red,
                      child: const Text(
                        'Password',
                        style: TextStyle(fontSize: 15),
                      )),
                ],
              ),
              TextField(
                //hide text
                obscureText: _isObscure,
                controller: psword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: ' Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )),
              ),
              Row(
                children: [
                  //check
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0, vertical: height * 0.025),
                    // color: Colors.black,
                    child: Text(
                      check(username, password),
                      style: TextStyle(
                          fontSize: 13, color: checkcolor(username, password)),
                    ),
                  ),
                  const Spacer(), //Spacer() = fill up the space
                  //buttom
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width * 0, vertical: height * 0.02),
                    // color: Colors.black,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            username = usname.text;
                            password = psword.text;
                          });
                        },
                        child: Text('Login')),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
