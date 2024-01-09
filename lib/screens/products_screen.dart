import 'package:catalog_provider_example/constants.dart';
import 'package:catalog_provider_example/provider/cart_model_provider.dart';
import 'package:catalog_provider_example/screens/favourite_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    CartModelProvider cartModel = Provider.of<CartModelProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FavouriteScreen()));
            },
            icon: const Icon(Icons.favorite_rounded),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: productItems.length,
        itemBuilder: (context, index) {
          Product product = productItems[index];
          return ListTile(
            leading: Container(
              width: 25,
              height: 25,
              color: product.color,
            ),
            title: Text(product.name),
            trailing: Checkbox(
              value: cartModel.items.contains(product),
              onChanged: (value) {
                if (value == true) {
                  cartModel.add(product);
                } else {
                  cartModel.remove(product);
                }
              },
            ),
          );
        },
      ),
    );
  }
}
