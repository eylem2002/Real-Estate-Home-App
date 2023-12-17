
import 'package:flutter/material.dart';
import 'package:new_batic/firebase_options.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/addPlanfloor.dart';
import 'package:new_batic/view/screen/Main%20Screen/Search%20Page/Search_home_folder/Search_main.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Search%20Page/filters_screen.dart';
import 'package:new_batic/view/screen/Sign%20in/up/splash_screen.dart';
import 'package:new_batic/view/widget/BottomNavBar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
// void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}