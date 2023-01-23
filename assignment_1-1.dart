void main() {
  var products = [
    {'name': 'apple', 'price': 10},
    {'name': 'banana', 'price': 8},
    {'name': 'orange', 'price': 6},
  ];

  String search = 'banana';
  int? price = 0;

  for (int i = 0; i < products.length; i++) {
    if (search == products[i]['name']) {
      price = products[i]['price'] as int?;
    }
  }
  print(search + ' is $price bath');
}
