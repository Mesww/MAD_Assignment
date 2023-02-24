import 'package:assignment_6/provider/check.dart';
import 'package:assignment_6/provider/q2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Q1 extends StatelessWidget {
  const Q1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController input_q1 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text('What is this year?'),
              TextField(
                controller: input_q1,
                decoration: InputDecoration(hintText: 'answer'),
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<Check>().set_Answer(input_q1.text);
                    context.read<Check>().check_();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Q2()));
                  },
                  child: Text('OK'))
            ],
          ),
        ),
      ),
    );
  }
}
