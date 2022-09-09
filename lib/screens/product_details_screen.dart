import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/productdata_provider.dart';

class ProductDetailsScreen extends StatelessWidget {

  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String; // giving id
    final productDetail = Provider.of<ProductProvidor>(context).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(productDetail.title),
      ),
      body: Center (
        child: Column(
          children: <Widget>[
            Image.network(productDetail.imageUrl,height: 350,width: double.infinity,fit: BoxFit.cover,),
            Text(productDetail.title,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
            Text(productDetail.description,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.normal)),
          ],
        ),
      ),
    );
  }
}