import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ex_5/provider/count.dart';

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
        child: Text('Counter = 0'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<Count>().add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
