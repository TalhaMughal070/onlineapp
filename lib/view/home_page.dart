import 'package:flutter/material.dart';
import 'package:onlineapp/Models/productmodel.dart';
import 'package:onlineapp/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Wishlist',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: const [
          Stack(
            children: [
              Icon(
                Icons.local_grocery_store,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Consumer<CartProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.products.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                onTap: () {},
                leading: Icon(Icons.add),
                title: Text('Products'),
                trailing: IconButton(
                    onPressed: () {
                      value.fexiblebutton();
                      value.set_addfav(Productmodel as Productmodel);
                    },
                    icon: Icon(value.isfav
                        ? Icons.favorite
                        : Icons.favorite_border_outlined)));
          },
        ),
      ),
    );
  }
}
