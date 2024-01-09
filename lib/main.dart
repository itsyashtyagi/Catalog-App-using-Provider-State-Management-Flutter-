import 'package:catalog_provider_example/provider/cart_model_provider.dart';
import 'package:catalog_provider_example/screens/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartModelProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider State Management Example',
        home: ProductScreen(),
      ),
    );
  }
}
