import 'package:flutter/material.dart';

class As2 extends StatelessWidget {
  const As2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(212, 8, 131, 106),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //https://icons.iconarchive.com/icons/kidaubis-design/cool-heroes/128/Ironman-icon.png
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://icons.iconarchive.com/icons/kidaubis-design/cool-heroes/128/Ironman-icon.png'),
                radius: 50,
                backgroundColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Iron Man',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(right: 55, top: 8, bottom: 8, left: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Color.fromARGB(100, 8, 131, 106),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '+66 012 345 6789',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(right: 100, top: 8, bottom: 8, left: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Color.fromARGB(100, 8, 131, 106),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'iron.man@mfu.ac.th',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
