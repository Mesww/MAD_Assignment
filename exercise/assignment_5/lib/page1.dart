import 'package:flutter/material.dart';
import 'package:assignment_5/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: ElevatedButton(
                onPressed: () {
                  var data = {
                    'name': 'Mes',
                    'age': 20,
                    "score": [7, 25, 28],
                    "grade": {"mobile": "A", "math": "B"}
                  };
                  // ไม่เก็บหน้า1ในhistory stack
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  Navigator.of(context).push(MaterialPageRoute(
                      // builder: (context) {
                      //   return const Page2();
                      // },
                      //and arrow function //ใช้อันนี้มากกว่า
                      builder: (context) => const Page2(),
                      settings: RouteSettings(arguments: data)));
                },
                child: Text("Next")),
          ),
        ],
      ),
    );
  }
}
