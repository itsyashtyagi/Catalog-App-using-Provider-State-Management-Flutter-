import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final Color color;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.color,
  });
}

final List<Product> productItems = [
  Product(id: 1, name: 'Mobile', price: 200.5, color: Colors.black),
  Product(id: 2, name: 'Laptop', price: 500.84, color: Colors.blue),
  Product(id: 3, name: 'Mouse', price: 50.5, color: Colors.yellow),
  Product(id: 4, name: 'Jeans', price: 100, color: Colors.blueAccent),
  Product(id: 5, name: 'Shirt', price: 50.5, color: Colors.pink),
  Product(id: 6, name: 'Jacket', price: 72.9, color: Colors.blueGrey),
  Product(id: 7, name: 'Clothes', price: 60, color: Colors.purpleAccent),
  Product(id: 8, name: 'Grocery Items', price: 55.2, color: Colors.red),
  Product(id: 9, name: 'Table', price: 30.8, color: Colors.orangeAccent),
  Product(id: 10, name: 'Chair', price: 25.5, color: Colors.lime),
];
