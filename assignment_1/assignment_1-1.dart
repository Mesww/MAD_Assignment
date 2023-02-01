void main() {
  var products = [
    {'name': 'apple', 'price': 10},
    {'name': 'banana', 'price': 8},
    {'name': 'orange', 'price': 6},
  ];

  String search = 'x';
  int price = 0;
  bool check = false;
  for (int i = 0; i < products.length; i++) {
    if (search == products[i]['name']) {
      //https://dart.dev/guides/language/language-tour#type-test-operators
      price = products[i]['price'] as int; //as : Typecast
      check = true;
    }
  }
  check
      ? print(search + ' is $price bath')
      : print("Error!!! : '$search' don't belong to product");
}
