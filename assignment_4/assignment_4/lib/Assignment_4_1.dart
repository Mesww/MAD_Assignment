import 'package:flutter/material.dart';

class Assignment_4_1 extends StatefulWidget {
  const Assignment_4_1({Key? key}) : super(key: key);

  @override
  _Assignment41Sta_t_e createState() => _Assignment41Sta_t_e();
}

class _Assignment41Sta_t_e extends State<Assignment_4_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(13, 59, 102, 60),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                child: const Text(
                  "Welcome to on time shop ",
                  style: TextStyle(
                      color: Color.fromRGBO(238, 150, 75, 100),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: const Text(
                  "Watch & Smart watch",
                  style: TextStyle(
                    color: Color.fromRGBO(244, 211, 94, 100),
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Click Here"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(249, 87, 56, 100))),
                ),
              ),
              Spacer(),
              Container(
                child: Text(
                  "Made by Worawut Khumnoi",
                  style: TextStyle(color: Color.fromRGBO(244, 211, 94, 100)),
                ),
              )
            ],
          ),
        ));
  }
}
