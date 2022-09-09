import 'package:flutter/material.dart';
import 'package:flutter_gift_shop/widgets/product_gridview.dart';

class ProductListScreen extends StatelessWidget {
  static const routeName = '/product-list';

  @override
  Widget build(BuildContext context) {
    final categoryName = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        backgroundColor: Colors.blue,
      ),
      body: ProductGridView(),
    );
  }
}