import 'package:assignment_6/provider/check.dart';
import 'package:flutter/material.dart';
import 'package:assignment_6/provider/q1.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (context) => Check(),
    child: MaterialApp(
      home: Q1(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
