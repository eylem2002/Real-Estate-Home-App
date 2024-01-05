// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/details/details_screen.dart';
import 'package:new_batic/view/widget/prodectCard.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
    final FirebaseAuth auth = FirebaseAuth.instance;

  void inputData() {
   final User? user = auth.currentUser;
 if (user != null) {
    final uid = user.uid;
    // here you write the codes to input the data into Firestore
  } else {
    // Handle the case when the user is not authenticated
    print('User is not authenticated');
  }
  // here you write the codes to input the data into firestore
}

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top: widthNHeight0(context, 1)*0.2),
      child: Scaffold(
        body:  Center(
          child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {


                    return Padding(
                      padding: const EdgeInsets.all(0),
                      child: ProductCard(
                        product: demoProducts[index],
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                  product: demoProducts[
                                      index]), //// move to the prodect page detailes
                            ),
                          );
                        },
                        onFavoriteChanged: (bool isFavorite) {
                         
                        },
                      ),
                    );
                  
                
          
                 
                },
              ),
              SizedBox(
                height: widthNHeight0(context, 1) * 0.1,
              )
            ],
          ),
              ),
        ),
      ),
    );
  }
}