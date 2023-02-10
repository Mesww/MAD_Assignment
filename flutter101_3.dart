import 'package:flutter/material.dart';

class Flutter101_3 extends StatefulWidget {
  const Flutter101_3({Key? key}) : super(key: key);

  @override
  _Flutter101_3_State createState() => _Flutter101_3_State();
}

class _Flutter101_3_State extends State<Flutter101_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.teal,
              height: 100,
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,  
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
