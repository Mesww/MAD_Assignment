import 'class101.dart';

void main(List<String> args) {
  String name = 'Pen';
  Class101 m = Class101(name);
  m.updatePrice(10);
  print('$name : ${m.getPrice}');
}
