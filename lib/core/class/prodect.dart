import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

const String description =
    "Luxurious 2-Bedroom Oasis in Binghatti Gate, JVC Discover a haven of elegance in this 2-bedroom apartment spanning 543 sq. ft. at Binghatti Gate, Jumeirah Village Circle. Revel in modern luxury and exceptional amenities.";

class Product {
  final int id;
  final String title, description, details_seller;
  final List<String> images;
  final List<String> images2;
  final List<Color> colors;
  final double rating, price;
  bool isFavourite, isPopular;
  int bath, bed;
  double square;
  String phone;
  String Type, Purpose, Added;
  String parking,
      balcony,
      buliding_name,
      year_bulid,
      total_flour,
      elevetors,
      disabled;
  double long, late;

  Product({
    this.long = 0,
    this.late = 0,
    this.parking = "",
    this.balcony = "",
    this.phone = "",
    this.buliding_name = "",
    this.year_bulid = "",
    this.total_flour = "",
    this.elevetors = "",
    this.disabled = "",
    this.details_seller = " ",
    this.Type = " ",
    this.Purpose = " ",
    this.Added = " ",
    required this.id,
    required this.images,
    required this.images2,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
    required this.bath,
    required this.bed,
    required this.square,
  });

  factory Product.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    Map<String, dynamic> data = doc.data()!;

    return Product(
      id: data['id'] ?? 0,
      images: List<String>.from(data['imgeshome'] ?? []),
      images2: List<String>.from(data['imageUrls'] ?? []),
      colors: [],
      title: data['title'] ?? 'null',
      price: (data['price'] ?? 0).toDouble(),
      description: data['description'] ?? '',
      bath: data['bath'] ?? 0,
      bed: data['bed'] ?? 0,
      square: (data['square'] ?? 0).toDouble(),
      details_seller: data['details_seller'] ?? "idk",
      Type: data['Type'] ?? "",
      Purpose: data['Purpose'] ?? "idk",
      Added: data['Added'] ?? "",
      parking: data['parking'] ?? "idk",
      balcony: data['balcony'] ?? "idk",
      buliding_name: data['buliding_name'] ?? "idk",
      year_bulid: data['year_bulid'] ?? "idk",
      total_flour: data['total_flour'] ?? "idk",
      elevetors: data['elevetors'] ?? "idk",
      disabled: data['disabled'] ?? "idk",
      long: (data['long'] ?? 0).toDouble(),
      late: (data['lati'] ?? 0).toDouble(),
    );
  }

  void toggleFavorite() {
    isFavourite = !isFavourite;
  }
}

List<Product> demoProducts = [
  Product(
    phone: "0798018827",
    long: 31.895647,
    late: 35.894724,
    id: 1,
    images: [
      "assets/images/png_pic/apartment.png",
      "assets/images/jpg_pic/home4.jpg",
      "assets/images/jpg_pic/home1.jpg",
      "assets/images/jpg_pic/home2.jpg",
      "assets/images/jpg_pic/home3.jpg",
    ],
    images2: [
      "assets/images/png_pic/ground.png",
      "assets/images/png_pic/floor1.png",
    ],
    colors: [
      Colors.white,
    ],
    title: "Amman, Abdoun , salaman street",
    price: 64000,
    bath: 2,
    bed: 3,
    square: 31.000,
    details_seller: "Fully Furnished | Marina View | Ready to Moved",
    Type: "Apartments",
    Purpose: "For Rent",
    Added: "2 Nov 2023",
    description: "description",
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
    parking: "YES",
    balcony: "120",
    buliding_name: "Starlink",
    year_bulid: "2023",
    elevetors: "2",
    total_flour: "4",
    disabled: "YES",
  ),
  Product(
    long: 31.983136,
    late: 35.924557,
    phone: "0788018812",
    id: 2,
    images: [
      "assets/images/png_pic/h111.png",
      "assets/images/jpg_pic/h2.jpg",
      "assets/images/jpg_pic/h3.jpg",
    ],
    images2: [
      "assets/images/png_pic/ground.png",
      "assets/images/png_pic/floor1.png",
    ],
    colors: [
      Colors.white,
    ],
    title: "irbid, salaman street",
    price: 30000,
    bath: 1,
    bed: 2,
    square: 20.000,
    details_seller: "Fully Furnished | Marina View | Ready to Moved",
    Type: "Apartments",
    Purpose: "For Rent",
    Added: "5 Nov 2022",
    description: description,
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
    parking: "YES",
    balcony: "120",
    buliding_name: "Starlink",
    year_bulid: "2023",
    elevetors: "2",
    total_flour: "4",
    disabled: "YES",
  ),
];
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

Future<void> fetchProducts() async {
  try {
    List<Product> products = await getProducts();
print(products.length);
   // demoProducts.clear();
    demoProducts.addAll(products);
    print('Number of products loaded: ${demoProducts.length}');
  } catch (e) {
    print('Error fetching products: $e');
  }
}
