import 'dart:ui';

import 'package:flutter/material.dart';

const String description =
    "Luxurious 2-Bedroom Oasis in Binghatti Gate, JVC Discover a haven of elegance in this 2-bedroom apartment spanning 543 sq. ft. at Binghatti Gate, Jumeirah Village Circle. Revel in modern luxury and exceptional amenities.";

class Product {
  final String ussid;
  final String id;
  final String title, description, details_seller;
  final List<dynamic> images;
  final List<dynamic> images2;
  final List<Color> colors;
  final double rating;
  String price;
  bool isFavourite, isPopular;
  int bath, bed;
  String square;
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
    this.ussid="",
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
    this.long = 1,
    this.late = 1,
  });


  void toggleFavorite() {
    isFavourite = !isFavourite;
  }
  // Map<String, dynamic> toJson() {
  //   return {
  //     'ussid': ussid,
  //     'id': id,
  //     'images': images,
  //     'images2': images2,
  //     'colors': colors.map((color) => color.value).toList(),
  //     'rating': rating,
  //     'isFavourite': isFavourite,
  //     'isPopular': isPopular,
  //     'title': title,
  //     'price': price,
  //     'description': description,
  //     'bath': bath,
  //     'bed': bed,
  //     'square': square,
  //     'long': long,
  //     'late': late,
  //     'parking': parking,
  //     'balcony': balcony,
  //     'buliding_name': buliding_name,
  //     'year_bulid': year_bulid,
  //     'total_flour': total_flour,
  //     'elevetors': elevetors,
  //     'disabled': disabled,
  //   };
  // }

  // // Deserialize Product from JSON
  // factory Product.fromJson(Map<String, dynamic> json) {
  //   return Product(
  //     ussid: json['ussid'] ?? "",
  //     id: json['id'],
  //     images: List<String>.from(json['images']),
  //     images2: List<String>.from(json['images2']),
  //     colors: (json['colors'] as List).map((color) => Color(color)).toList(),
  //     rating: json['rating']?.toDouble() ?? 0.0,
  //     isFavourite: json['isFavourite'] ?? false,
  //     isPopular: json['isPopular'] ?? false,
  //     title: json['title'],
  //     price: json['price'],
  //     description: json['description'],
  //     bath: json['bath'],
  //     bed: json['bed'],
  //     square: json['square'],
  //     long: json['long']?.toDouble() ?? 1,
  //     late: json['late']?.toDouble() ?? 1,
  //     parking: json['parking'] ?? "",
  //     balcony: json['balcony'] ?? "",
  //     buliding_name: json['buliding_name'] ?? "",
  //     year_bulid: json['year_bulid'] ?? "",
  //     total_flour: json['total_flour'] ?? "",
  //     elevetors: json['elevetors'] ?? "",
  //     disabled: json['disabled'] ?? "",
  //   );
  // }

}

List<Product> demoProducts = [

];




  // Product(
  //   phone: "0798018827",
  //   long: 31.895647,
  //   late: 35.894724,
  //   id: 1,
  //   images: [
  //     "assets/images/png_pic/apartment.png",
  //     "assets/images/jpg_pic/home4.jpg",
  //     "assets/images/jpg_pic/home1.jpg",
  //     "assets/images/jpg_pic/home2.jpg",
  //     "assets/images/jpg_pic/home3.jpg",
  //   ],
  //   images2: [
  //     "assets/images/png_pic/ground.png",
  //     "assets/images/png_pic/floor1.png",
  //   ],
  //   colors: [
  //     Colors.white,
  //   ],
  //   title: "Amman, Abdoun , salaman street",
  //   price: 64000,
  //   bath: 2,
  //   bed: 3,
  //   square: 31.000,
  //   details_seller: "Fully Furnished | Marina View | Ready to Moved",
  //   Type: "Apartments",
  //   Purpose: "For Rent",
  //   Added: "2 Nov 2023",
  //   description: "description",
  //   rating: 4.8,
  //   isFavourite: false,
  //   isPopular: true,
  //   parking: "YES",
  //   balcony: "120",
  //   buliding_name: "Starlink",
  //   year_bulid: "2023",
  //   elevetors: "2",
  //   total_flour: "4",
  //   disabled: "YES",
  // ),