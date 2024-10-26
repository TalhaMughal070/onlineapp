import 'package:flutter/material.dart';
import 'package:onlineapp/Models/productmodel.dart';
import 'package:onlineapp/constants/constants.dart';
import 'package:provider/provider.dart';

class CartProvider with ChangeNotifier {
  final List _products = [];

  List get products => _products;
  bool _isfav = false;
  bool get isfav => _isfav;

  void additems(String items) {
    _products.add(items);
    notifyListeners();
  }

  void removeproduct(String items) {
    _products.remove(items);
  }

  bool fav(String items) {
    return _products.contains(items);
  }

  void fexiblebutton(index) {
    if (_products.contains(index)) {
      _products.remove(index);
    } else {
      _products.add(index);
    }
    notifyListeners();
  }
}
