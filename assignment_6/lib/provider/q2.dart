import 'package:assignment_6/provider/Q1.dart';
import 'package:assignment_6/provider/check.dart';
import 'package:assignment_6/provider/summary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Q2 extends StatelessWidget {
  const Q2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController input_q2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text('What is the color of banana?'),
              TextField(
                controller: input_q2,
                decoration: InputDecoration(hintText: 'answer'),
              ),
              ElevatedButton(
                  onPressed: () {
                    List<String> answer = ['yellow', 'Yellow'];
                    for (var i = 0; i < answer.length; i++) {
                      if (input_q2.text == answer[i]) {
                        context.read<Check>().set_Score();
                      }
                    }
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Summary()));
                  },
                  child: Text('OK'))
            ],
          ),
        ),
      ),
    );
  }
}
