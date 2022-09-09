import 'package:flutter/material.dart';
import 'package:flutter_gift_shop/screens/product_list_screen.dart';

class HomeScreen extends StatelessWidget {

  List<String> listOfCategories = ["Electronics","Men","Women","Baby & kids"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Category List',textAlign: TextAlign.center,),
        ),
        body:  Container(
          // Use ListView.builder
          child: ListView.builder(
            // the number of items in the list
              itemCount: listOfCategories.length,
              // display each item of the product list
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ProductListScreen.routeName,arguments: listOfCategories[index]);
                    },
                    child: Card(
                      // In many cases, the key isn't mandatory
                      key: UniqueKey(),
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(listOfCategories[index])),
                    ));
              }),
        )
    );
  }
}