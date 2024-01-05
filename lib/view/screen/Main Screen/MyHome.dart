// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/details/details_screen.dart';
import 'package:new_batic/view/widget/Myhomecard.dart';
import 'package:new_batic/view/widget/prodectCard.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  late String uid;

  @override
  void initState() {
    super.initState();
    fetchUserUid();
  }

  void fetchUserUid() {
    final User? user = auth.currentUser;
    if (user != null) {
      uid = user.uid;
    } else {
      // Handle the case when the user is not authenticated
      print('User is not authenticated');
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> homeWidgets = List.generate(
      demoProducts.length,
      (index) {
        // Check if the product belongs to the authenticated user
        if (demoProducts[index].ussid == uid) {
          return Padding(
            padding: const EdgeInsets.all(0),
            child: MyHomecard(
              product: demoProducts[index],
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: demoProducts[index],
                    ),
                  ),
                );
              },
              onFavoriteChanged: (bool isFavorite) {
                // Handle favorite changes
              },
            ),
          );
        } else {
          // If the product doesn't belong to the user, return an empty container
          return Container();
        }
      },
    );

    return Padding(
      padding: EdgeInsets.only(top: widthNHeight0(context, 1) * 0.2),
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              if (homeWidgets.isNotEmpty)
                ...homeWidgets,
              if (homeWidgets.isEmpty)
                Center(
                  child: Text(
                    'No homes to show',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              SizedBox(
                height: widthNHeight0(context, 1) * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
