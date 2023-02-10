import 'package:flutter/material.dart';

class Assignment_4_2 extends StatefulWidget {
  const Assignment_4_2({Key? key}) : super(key: key);

  @override
  _Assignment_4_2State createState() => _Assignment_4_2State();
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class _Assignment_4_2State extends State<Assignment_4_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FFFBEB"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://icons.iconarchive.com/icons/chanut/role-playing/256/Villager-icon.png",
                ),
                radius: 50,
                backgroundColor: HexColor("#495579"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                'Mes',
                style: TextStyle(
                    color: HexColor("#263159"),
                    fontSize: 25,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'UNIVERSITY STUDENT',
                style: TextStyle(
                    color: HexColor("#263159"),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Color.fromRGBO(38, 49, 89, 45),
              margin: EdgeInsets.only(left: 5, right: 5),
              padding:
                  EdgeInsets.only(left: 10, right: 110, top: 10, bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.phone, color: HexColor("FFFBEB")),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+66 085 371 1324',
                    style: TextStyle(color: HexColor("FFFBEB")),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Color.fromRGBO(38, 49, 89, 45),
              margin: EdgeInsets.only(left: 5, right: 5),
              padding:
                  EdgeInsets.only(left: 10, right: 50, top: 10, bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.email, color: HexColor("FFFBEB")),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '6431501102@lamduan.mfu.ac.th',
                    style: TextStyle(color: HexColor("FFFBEB")),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
