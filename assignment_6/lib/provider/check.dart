import 'package:assignment_6/provider/q1.dart';
import 'package:flutter/material.dart';

class Check with ChangeNotifier {
  int score = 0;
  List<String> check = [DateTime.now().year.toString(), 'yellow', 'Yellow'];
  List<String> answer = [];

  void set_Answer(String answer) {
    this.answer.add(answer);
    notifyListeners();
  }

  void clear_AnswerandScore() {
    answer.clear();
    score = 0;
    notifyListeners();
  }

  void check_() {
    for (int i = 0; i < answer.length; i++) {
      if (answer[i] == check[i]) {
        score = score + 1;
        break;
      }
    }
  }

  int get get_Score => score;
}
