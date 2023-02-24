import 'package:ex_5v1/provider/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ex_5v1/provider/count.dart';

class Counter2 extends StatefulWidget {
  const Counter2({Key? key}) : super(key: key);

  @override
  _Counter2State createState() => _Counter2State();
}

class _Counter2State extends State<Counter2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter 2'),
      ),
      body: Center(
        child: Text('Counter = ${context.watch<Count>().getValue}'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<Count>().remove();
              },
              child: Icon(Icons.remove),
            ),
            SizedBox(
              width: 200,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Counter()));
              },
              child: Icon(Icons.navigate_before),
            ),
          ],
        ),
      ),
    );
  }
}
