import 'package:flutter/material.dart';

class Flutter101_4 extends StatefulWidget {
  const Flutter101_4({Key? key}) : super(key: key);

  @override
  _Flutter10_14State createState() => _Flutter10_14State();
}

class _Flutter10_14State extends State<Flutter101_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('MyProfile'),
        centerTitle: true, //haven't right
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Container(
            //ต้องเป็นลิงค์ตรงไปหารูปเท่านั้น
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://icons.iconarchive.com/icons/icons8/windows-8/128/Cinema-Batman-New-icon.png"),
              backgroundColor: Colors.grey[700],
              radius: 50,
            ),
          )),
          const Divider(
            color: Colors.grey,
            height: 20,
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.only(left: 8),
            child: const Text(
              'Name',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8),
            child: const Text(
              'Mes',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
              padding: EdgeInsets.only(left: 8),
              child: const Text(
                'Age',
                style: TextStyle(color: Colors.grey),
              )),
          Container(
            padding: EdgeInsets.only(left: 8),
            child: const Text(
              '20',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.only(left: 8),
            child: Row(
              children: const [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "6431501102@lamduan.mfu.ac.th",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
