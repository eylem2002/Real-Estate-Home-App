import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
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


  void toggleFavorite() {
    isFavourite = !isFavourite;
  }
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