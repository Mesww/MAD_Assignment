import 'package:ex_5v1/provider/cartcollect.dart';
import 'package:ex_5v1/provider/shop.dart';
import 'package:flutter/material.dart';
// import 'package:ex_5v1/provider/counter.dart';
// import 'package:ex_5v1/provider/counter2.dart';
import 'package:ex_5v1/provider/count.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      //set State Management
      create: (context) => Cartcollect(),
      child: const MaterialApp(
        home: Shop(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
