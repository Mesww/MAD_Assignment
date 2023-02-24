import 'package:flutter/material.dart';
import 'package:ex_5/provider/counter.dart';
import 'package:ex_5/provider/count.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Count(),
      child: const MaterialApp(
        home: Counter(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
