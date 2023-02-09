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
  String result = '';
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  bool c = true;
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
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.orange)),
                    onPressed: () {
                      setState(() {
                        num1 = int.tryParse(n1.text)!;
                        num2 = int.tryParse(n2.text)!;
                        result = (num1 + num2).toString();
                        print(result);
                        c = false;
                      });
                    },
                    child: Text('Sum'),
                  ),
                ),
                const Spacer(),
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    onPressed: () {
                      setState(() {
                        num1 = int.tryParse(n1.text)!;
                        num2 = int.tryParse(n2.text)!;
                        result = (pow(num1, num2) as int?).toString();
                        print(result);
                        c = false;
                      });
                    },
                    child: Text('Power'),
                  ),
                ),
                const Spacer(),
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    onPressed: () {
                      setState(() {
                        result = '';
                        n1.clear();
                        n2.clear();
                        c = true;
                      });
                    },
                    child: Text('Clear'),
                  ),
                )
              ],
            ),
            Text(c ? '' : 'result = $result')
          ],
        ),
      ),
    );
  }
}
