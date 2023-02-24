class Class101 {
  int price = 0;
  String name = '';
  Class101(String name) {
    this.name = name;
  }
  void updatePrice(int price) {
    this.price = price;
  }
  // int getPrice(){
  //   return this.price;
  // }
  int get getPrice => this.price;
}
