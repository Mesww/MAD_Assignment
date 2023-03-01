import 'package:assignment_6/provider/q1.dart';
import 'package:flutter/material.dart';

class Check with ChangeNotifier {
  int score = 0;

  void clear_AnswerandScore() {
    score = 0;
  }

  void set_Score() {
    score++;
    }
  
  int get get_Score => score;
}
