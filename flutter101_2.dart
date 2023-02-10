import 'package:flutter/material.dart';

class Flutter101_2 extends StatefulWidget {
  const Flutter101_2({Key? key}) : super(key: key);

  @override
  _Flutter1012Stat_e createState() => _Flutter1012Stat_e();
}

class _Flutter1012Stat_e extends State<Flutter101_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.brown,
                  width: 100,
                  height: 200,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
