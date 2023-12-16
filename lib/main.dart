
import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/Main%20Screen/Search%20Page/Search_home_folder/Search_main.dart';
import 'package:new_batic/view/screen/Map%20Screen/EnterSevices.dart';
import 'package:new_batic/view/screen/Sign%20in/up/splash_screen.dart';
import 'package:new_batic/view/widget/BottomNavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomeBottomNavBar(),
    );
  }
}