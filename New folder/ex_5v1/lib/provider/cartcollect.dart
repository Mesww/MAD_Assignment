import 'package:ex_5v1/provider/Cart.dart';
import 'package:flutter/material.dart';

class Cartcollect with ChangeNotifier {
  List<String> cart = [];
    // ช้า
  // var cart = [];
  int total = 0;

  void setCart(String name) {
    cart.add(name);
    notifyListeners();
  }

  void clearCart() {
    cart.clear();
    notifyListeners();
  }

  List<String> get get_Cart => this.cart;
  int get get_total => this.cart.length;
}
