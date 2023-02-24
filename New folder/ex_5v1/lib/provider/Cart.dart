import 'package:ex_5v1/provider/cartcollect.dart';
import 'package:ex_5v1/provider/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              '${context.watch<Cartcollect>().get_Cart}',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => const Shop()));
                  //read เพื่อเปลี่ยนแปลงค่า
                  //watch เพื่อดูค่า
                  context.read<Cartcollect>().clearCart();
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                child: Text(
                  'Clear',
                ))
          ],
        ),
      ),
    );
  }
}
