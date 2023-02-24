import 'package:ex_5v1/provider/counter2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ex_5v1/provider/count.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text('Counter = ${context.watch<Count>().getValue}'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<Count>().add();
              },
              child: Icon(Icons.add),
            ),
            SizedBox(
              width: 200,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Counter2()));
              },
              child: Icon(Icons.navigate_next),
            )
          ],
        ),
      ),
    );
  }
}
