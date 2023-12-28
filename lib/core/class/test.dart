import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  Future<List<Product>> getProducts() async {
  try {
    List<Product> products = [];
    final aa = await FirebaseFirestore.instance.collection('House').get();
    List list = [];
    aa.docs.forEach((element){
      list.add( element.get('dataList'));
    });
    // QuerySnapshot<Map<String, dynamic>> snapshot =
        // await productsCollection.get();

    // print('Number of documents: ${snapshot.size}');

    // List<Product> products = snapshot.docs.map((DocumentSnapshot<Map<String, dynamic>> doc) {
    //   print('Document ID: ${doc.id}');

    //   return Product.fromFirestore(doc);
    // }).toList();
// products.forEach((element) { print('============${element.images}');});
    return products;
  } catch (e) {
    print('Error fetching products: $e');
    return [];
  }
}

  @override
  Widget build(BuildContext context) {
    return Container(

child:
      FutureBuilder(
        future: getProducts(),
        

        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.hasData){
            final product = snapshot.data;
            return SizedBox(
            height: 600,
            width: 350,
            child: ListView.builder(
              itemCount: product.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(product[index]["House"]);
              },
            ),
          ) ;}else{return Container();}
          
        },
      ),
    );
  }
}