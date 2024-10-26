import 'package:flutter/material.dart';
import 'package:onlineapp/main.dart';
import 'package:onlineapp/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Cart Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: context.watch<CartProvider>().products.isEmpty
          ? const Center(
              child: Text('No items Favorite'),
            )
          : ListView.builder(
              itemCount: context.watch<CartProvider>().products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(context.watch<CartProvider>().products[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      context.read<CartProvider>().fexiblebutton(index);
                    },
                  ),
                );
              },
            ),
    );
  }
}
