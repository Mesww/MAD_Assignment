import 'package:flutter/material.dart';
import 'package:assignment_5/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //get data
    // int data = ModalRoute.of(context)!.settings.arguments as int; //type casting
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Column(
        children: [
          Text("${data['name']}"),
          Text("${data['age']}"),
          Text("${data['score'][0]}"),
          Text("${data['grade']['mobile']}"),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Page3())),
                child: Text("Next")),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //                     //and arrow function
                  //   builder: (context) => const Page1(),
                  //ไม่ควรทำเพราะแรมจะเต็มและจะเกิด stack overflow
                  Navigator.pop(context);
                },
                child: Text("Back")),
          )
        ],
      ),
    );
  }
}
