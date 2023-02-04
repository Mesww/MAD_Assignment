import 'package:flutter/material.dart';
import 'dart:math';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  int num1 = 0;
  int num2 = 0;
  int result = 0;
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.03),
        child: Column(
          children: [
            TextField(
              controller: n1,
              decoration: InputDecoration(hintText: 'Number 1'),
            ),
            TextField(
              controller: n2,
              decoration: InputDecoration(hintText: 'Number 2'),
            ),
            Row(
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num1 = int.tryParse(n1.text)!;
                        num2 = int.tryParse(n2.text)!;
                        result = (num1 + num2);
                        print(result);
                      });
                    },
                    child: Text('Sum'),
                  ),
                ),
                const Spacer(),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num1 = int.tryParse(n1.text)!;
                        num2 = int.tryParse(n2.text)!;
                        result = (pow(num1, num2) as int?)!;
                        print(result);
                      });
                    },
                    child: Text('Power'),
                  ),
                ),
                const Spacer(),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = 0;
                      });
                    },
                    child: Text('Clear'),
                  ),
                )
              ],
            ),
            Text(result.toString())
          ],
        ),
      ),
    );
  }
}
