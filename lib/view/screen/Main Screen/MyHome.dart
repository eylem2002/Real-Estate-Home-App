// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/details/details_screen.dart';
import 'package:new_batic/view/widget/Myhomecard.dart';
import 'package:shared_preferences/shared_preferences.dart';
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  late String uid;
  bool moon = false;

  @override
  void initState() {
    super.initState();
    fetchUserUid();
   //  loadData();
  }

  void fetchUserUid() {
    final User? user = auth.currentUser;
    if (user != null) {
      uid = user.uid;
    } else {
      print('User is not authenticated');
    }
  }
  void onDeletePressed(Product deletedProduct) {
  setState(() {
    demoProducts.remove(deletedProduct);
   //  saveData();
  });
}
// void saveData() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   List<String> productsJsonList = demoProducts.map((product) => jsonEncode(product.toJson())).toList();
//   prefs.setStringList('demoProducts', productsJsonList);
// }

// void loadData() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   List<String>? productsJsonList = prefs.getStringList('demoProducts');
//   if (productsJsonList != null) {
//     demoProducts = productsJsonList.map((json) => Product.fromJson(jsonDecode(json))).toList();
//   } else {
//     demoProducts = []; // Initialize with an empty list if no data is found
//   }
// }





  @override
  Widget build(BuildContext context) {
    List<Widget> homeWidgets = List.generate(
      demoProducts.length,
      (index) {
       
        if (demoProducts[index].ussid == uid) {
          moon = true;
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
              },
               onDeletePressed: () {
            onDeletePressed(demoProducts[index]);
          },
            ),
          );
        } else {
          moon = false;
          print("%%%%%%%%%%%%%");
          return Container();
        }
      },
    );

    return 
     
      Scaffold(
        appBar: AppBar(
        title: Center(
          child: Text('My Home',
              style: TextStyle(
                fontSize: widthNHeight0(context, 1) * 0.06,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
              )),
        ),
        automaticallyImplyLeading: false,
      ),
        body: SingleChildScrollView(
          
          scrollDirection: Axis.vertical,
          child: Column(
            
            children: [
               Divider(
            height: 1,
            color: Colors.grey[300],
          ),
              if (moon) ...homeWidgets,
              if (moon == false)
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: widthNHeight0(context, 1) * 0.5),
                      child: Center(
                        child: Column(
                          children: const [
                            Text(
                              "SELL OR RENT YOUR HOME NOW!",
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
                              "It looks like you haven’t sold or rented \nany homes just yet.",
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
                  ],
                )
            ],
          ),
        ),
    
    );
  }
}
