import 'package:assignment_5/r2.dart';
import 'package:flutter/material.dart';

class R1 extends StatefulWidget {
  const R1({Key? key}) : super(key: key);

  @override
  _R1State createState() => _R1State();
}

class _R1State extends State<R1> {
  String message = 'What is your name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(message),
            ElevatedButton(
                onPressed: () async {
                  var name = await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const R2()));
                  //debug
                  if (name != null) {
                    setState(() {
                      message = 'Hello $name';
                    });
                  }
                },
                child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
