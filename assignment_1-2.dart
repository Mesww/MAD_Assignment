void main() {
  String id = '6431501102';
  int i = 0, result = 0;
  while (i < id.length) {
    result = int.parse(id[i]) + result;
    i++;
  }
  print('Sum of 6431501102 = $result');
}
