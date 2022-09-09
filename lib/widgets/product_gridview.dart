import 'package:flutter/material.dart';
import 'package:flutter_gift_shop/widgets/product_listitem.dart';
import 'package:provider/provider.dart';

import '../providers/productdata_provider.dart';

class ProductGridView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductProvidor>(context);
    final productList = productData.items;
    return Container(
      color: Colors.white60,
      child: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: productList.length,
        itemBuilder: (ctx, index) => ProductListItem(productList[index].id,
            productList[index].title, productList[index].imageUrl,productList[index].description,productList[index].price),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 3 / 4
        ),
      ),
    );
  }
}