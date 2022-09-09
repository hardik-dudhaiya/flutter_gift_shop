import 'package:flutter/material.dart';
import '../models/Products.dart';

class ProductProvidor with ChangeNotifier {
  List<Products> _items = [
    Products(
        id: 'p1',
        title: 'Yellow T-Shirt',
        description: 'A T-shirt - it is pretty sample!',
        price: 500,
        imageUrl:
        'https://i.ibb.co/f2QDsgZ/first.png'),
    Products(
        id: 'p2',
        title: 'Yellow T-Shirt',
        description: 'A T-shirt - it is pretty sample!',
        price: 1000,
        imageUrl:
        'https://i.ibb.co/z2XM0DD/second.jpg'),
    Products(
        id: 'p3',
        title: 'Black T-Shirt',
        description: 'A T-shirt - it is pretty sample!',
        price: 1200,
        imageUrl:
        'https://i.ibb.co/r02T8zw/three.jpg'),
    Products(
        id: 'p4',
        title: 'Yellow T-Shirt',
        description: 'A T-shirt - it is pretty sample!',
        price: 1500,
        imageUrl:
        'https://i.ibb.co/7JgDD8y/four.png'
    ),
    Products(
        id: 'p5',
        title: 'White T-Shirt',
        description: 'A T-shirt - it is pretty sample!',
        price: 300,
        imageUrl:
        'https://i.ibb.co/cTPg3f1/five.png'),
  ];

  List<Products> get items {
    return [..._items];
  }

  void addProduct() {
    notifyListeners();
  }

  Products findById(String productId) {
    return _items.firstWhere((prod) => prod.id == productId);
  }
}