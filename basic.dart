import 'dart:ffi';

void main(List<String> args) {
  // print("Hello World");

  // VARIABLES
  // int age = 19;
  // double pi = 3.14;
  // String name = "Lisa";
  // bool stage = false;
  // print(name + " is $age" + " years old");

  // // CONDITION
  // if (age < 20) {
  //   print("Teen");
  // } else {
  //   print("adult");
  // }

  // // LOOP
  // for (int i = 2; i <= 10; i += 2) {
  //   print(i);
  // }

  // // ARRAY
  // List<String> student = ["Lisa", "Peter", "Tom", "Mary", "Jerry"];
  // print(student[0]);
  // print(student[4]);
  // print(student[student.length - 1]);
  // print(student.first);
  // for (int i = 0; i <= student.length - 1; i++) {
  //   print(student[i]);
  // }

  // MAP
  // var score = {"midterm": 18, "final": 20};
  // print(score['midterm']);
  // print(score['final']);

  // var total = score["midterm"]! + score["final"]!;
  // print(total);

  // List of Map
  List<Map> score = [
    {"midterm": 18, "final": 19},
    {"midterm": 15, "final": 17},
    {"midterm": 16, "final": 18},
  ];
  print(score[1]["final"]);
  int? sum = 0;
  for (int i = 0; i <= score.length - 1; i++) {
    sum = (sum! + score[i]["final"]) as int?;
  }
  print(sum);
}
