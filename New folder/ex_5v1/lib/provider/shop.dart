import 'package:ex_5v1/provider/Cart.dart';
import 'package:ex_5v1/provider/cartcollect.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('update');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Apple",
                  style: TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<Cartcollect>().setCart('Apple');
                    },
                    child: Text('Add'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Banana",
                  style: TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<Cartcollect>().setCart('Banana');
                    },
                    child: Text('Add'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Orange",
                  style: TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<Cartcollect>().setCart('Orange');
                    },
                    child: Text('Add'))
              ],
            ),
            SizedBox(
              height: 20,
            ), //จะupdateในconsunmerจะเร็วกว่าแบบธรรมดา
            Consumer<Cartcollect>(
                builder: ((context, value, child) => Text(
                      'Total in cart = ${value.cart.length}',
                      style: TextStyle(fontSize: 30),
                    ))),
            // //  Text(
            //   'Total in cart = ${context<Cartcollect>().get_total()}',
            //   style: TextStyle(fontSize: 30),
            // )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Cart()));
                },
                child: Text('Show cart'))
          ],
        ),
      ),
    );
  }
}
