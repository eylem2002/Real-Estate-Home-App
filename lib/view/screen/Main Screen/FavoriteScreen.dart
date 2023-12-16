import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/view/screen/details/details_screen.dart';
import 'package:new_batic/view/widget/prodectCard.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Product> favoriteProducts =
      demoProducts.where((product) => product.isFavourite).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Saved",
          style: TextStyle(fontFamily: "Kadwa", fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Divider(
            height: 1,
            color: Colors.grey[300],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: favoriteProducts
                      .map(
                        (product) => ProductCard(
                          product: product,
                          onPress: () {
                            // add action
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailsScreen(product: product),
                              ),
                            );
                          },
                          onFavoriteChanged: (isFavourite) {
                            setState(() {
                              final productIndex = favoriteProducts
                                  .indexWhere((p) => p.id == product.id);

                              if (isFavourite) {
                                // Add the product to favorites
                                if (productIndex == -1) {
                                  favoriteProducts.add(product);
                                }
                              } else {
                                // Remove the product from favorites
                                if (productIndex != -1) {
                                  favoriteProducts.removeAt(productIndex);
                                }
                              }
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
