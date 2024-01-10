// ignore_for_file: use_super_parameters, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/core/services/EnterSevices.dart';

import 'package:new_batic/view/screen/details/details_screen.dart';
import 'package:new_batic/view/widget/prodectCard.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Product> favoriteProducts =
      demoProducts.where((product) => product.isFavourite).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Saved',
              style: TextStyle(
                fontSize: widthNHeight0(context, 1) * 0.06,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
              )),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Divider(
            height: 1,
            color: Colors.grey[300],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
              
                children: [
                  Container(
                   
                    margin: const EdgeInsets.all(20),
                    child: favoriteProducts.isEmpty
                        ? Padding(
                       padding: EdgeInsets.only(top: widthNHeight0(context, 1)*0.5),
                          child: Center(
                              child: Column(
                               
                                children: const [
                                  Text(
                                    "SAVE YOUR FAVOURITE PROPERTIES NOW!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff6482C4),
                                      fontFamily: "Kadwa",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "It looks like you haven’t added any favourite properties just yet.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Kadwa",
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: favoriteProducts
                                .map(
                                  (product) => ProductCard(
                                    product: product,
                                    onPress: () {
                                     
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
                                         
                                          if (productIndex == -1) {
                                            favoriteProducts.add(product);
                                          }
                                        } else {
                                      
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
