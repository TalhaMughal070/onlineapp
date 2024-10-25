import 'package:flutter/material.dart';
import 'package:onlineapp/Models/productmodel.dart';
import 'package:provider/provider.dart';

class CartProvider with ChangeNotifier {
  final List<Productmodel> _products = [];

  List<Productmodel> get products => _products;
  bool _isfav = false;
  bool get isfav => _isfav;
  void set_addfav(Productmodel model) {
    _products.add(model);
    notifyListeners();
  }

  void fexiblebutton() {
    _isfav = !_isfav;
    notifyListeners();
  }
}
