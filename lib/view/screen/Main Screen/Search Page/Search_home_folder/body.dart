import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signin.dart';
import 'package:new_batic/view/screen/details/details_screen.dart';
import 'package:new_batic/view/widget/prodectCard.dart';

class BodySearch extends StatefulWidget {
  // ignore: use_super_parameters
  const BodySearch({Key? key}) : super(key: key);

  @override
  State<BodySearch> createState() => _BodySearchState();
}

class _BodySearchState extends State<BodySearch> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ...List.generate(
            demoProducts.length,
            (index) {
              if (demoProducts[index].isPopular) {
                return Padding(
                  padding: const EdgeInsets.all(0),
                  child: ProductCard(
                    product: demoProducts[index],
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(product: demoProducts[index]),//// move to the prodect page detailes
                        ),
                      );
                    },
                    onFavoriteChanged: (bool isFavorite) {
                      // Handle favorite change logic if needed
                    },
                  ),
                );
              }

              return const SizedBox.shrink();
            },
          
          ),
    SizedBox(height: widthNHeight0(context, 1)*0.1,)
        ],
      ),
    );
  }
}
