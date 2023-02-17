import 'package:flutter/material.dart';

class R2 extends StatelessWidget {
  const R2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController en = TextEditingController();
    String name = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route 2'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: en,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your name',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, en.text);
                },
                child: Text("Ok"))
          ],
        ),
      ),
    );
  }
}
