import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gift_shop/providers/productdata_provider.dart';
import 'package:flutter_gift_shop/screens/home_screen.dart';
import 'package:flutter_gift_shop/screens/product_details_screen.dart';
import 'package:flutter_gift_shop/screens/product_list_screen.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create : (ctx) => ProductProvidor(),
      child: MaterialApp(
        title: 'Gift Shop',
        theme: ThemeData(
          fontFamily: 'ChunkFive', colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.redAccent),
        ),
        home: HomeScreen(),
        routes: {
          ProductListScreen.routeName: (ctx) => ProductListScreen(),
          ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
        },
      ),
    );
  }
}
