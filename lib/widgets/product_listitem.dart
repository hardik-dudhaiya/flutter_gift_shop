import 'package:flutter/material.dart';

import '../screens/product_details_screen.dart';

class ProductListItem extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  ProductListItem(this.id, this.title, this.imageUrl,this.description,this.price);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailsScreen.routeName,arguments:id);
          },
          child:
          Stack(
            children: [
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
              Container(
                // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                width: double.infinity,
                color: Colors.black54,
                padding: const EdgeInsets.all(7),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              Positioned(
                // The Positioned widget is used to position the text inside the Stack widget
                bottom: 45,
                right: 1,
                left: 1,

                child: Container(
                  // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                  color: Colors.black54,
                  padding: const EdgeInsets.all(7),
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),

        footer: GridTileBar(
            leading: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
              color: Theme.of(context).colorScheme.secondary,
            ),
            backgroundColor: Colors.black87,
            title: Text(
              price.toString(),
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              color: Theme.of(context).colorScheme.secondary,
              onPressed: () {},
            )),
      ),
    );
  }
}