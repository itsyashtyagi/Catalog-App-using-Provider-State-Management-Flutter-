import 'package:catalog_provider_example/constants.dart';
import 'package:catalog_provider_example/provider/cart_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Screen'),
        centerTitle: true,
      ),
      body: Consumer<CartModelProvider>(builder: (context, provider, child) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.80,
              child: ListView.builder(
                itemCount: provider.items.length,
                itemBuilder: (context, index) {
                  Product product = provider.items[index];
                  return ListTile(
                    leading: Container(
                      width: 25,
                      height: 25,
                      color: product.color,
                    ),
                    title: Text(product.name),
                    onLongPress: () {
                      provider.remove(product);
                    },
                  );
                },
              ),
            ),
            Text("Cart Total \Rupee.${provider.getCartTotal()}")
          ],
        );
      }),
    );
  }
}
