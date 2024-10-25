import 'package:flutter/material.dart';

class Productmodel {
  int product_id;
  String product_name;
  int product_price;
  Color product_color;

  Productmodel({
    required this.product_id,
    required this.product_name,
    required this.product_price,
    required this.product_color,
  });
}
