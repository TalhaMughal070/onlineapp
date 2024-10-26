import 'package:flutter/material.dart';
import 'package:onlineapp/Models/productmodel.dart';
import 'package:onlineapp/constants/constants.dart';
import 'package:onlineapp/provider/cart_provider.dart';
import 'package:onlineapp/view/Cart_screen.dart';
import 'package:provider/provider.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    print('build full widget');
    List<String> items = ['apple', 'mango', 'banana', 'orange', 'yellow'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Wishlist',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            icon: const Icon(
              Icons.local_grocery_store,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Consumer<CartProvider>(builder: (ctx, value, child) {
        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];
            final isfav = ctx.watch<CartProvider>().fav(item as String);
            return ListTile(
                onTap: () {},
                leading: Icon(Icons.abc),
                title: Text(item),
                trailing: IconButton(
                    onPressed: () {
                      ctx.read<CartProvider>().fexiblebutton(item);
                    },
                    icon: Icon(
                      isfav ? Icons.favorite : Icons.favorite_border_outlined,
                      color: isfav ? Colors.red : Colors.grey,
                    )));
          },
        );
      }),
    );
  }
}
