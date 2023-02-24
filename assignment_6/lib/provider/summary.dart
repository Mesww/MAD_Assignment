import 'package:assignment_6/provider/Q1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assignment_6/provider/check.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text('Total score = ${context.watch<Check>().get_Score}'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: ((context) => const Q1())));
                    context.read<Check>().clear_AnswerandScore();
                  },
                  child: Text('Restart'))
            ],
          ),
        ),
      ),
    );
  }
}
