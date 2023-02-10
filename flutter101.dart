import 'package:flutter/material.dart';

class Flutter101 extends StatefulWidget {
  const Flutter101({Key? key}) : super(key: key);

  @override
  _Flutter101State createState() => _Flutter101State();
}

class _Flutter101State extends State<Flutter101> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.end,
        //ยืดให้สุดจอ
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAx  isAlignment: CrossAxisAlignment.center,
        children: [
          //ยืดcontainnerให้ไปสุดกับcontainerอีกอัน
          Expanded(
            //แบ่งสัดส่วนหน้าจอ //2 + 2 + 4 = 10 ==> percent
            flex: 2,
            child: Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
            ),
          ),
          // Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  width: 200,
                  height: 100,
                ),
              ),
            ],
          ),
          // Spacer(),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
