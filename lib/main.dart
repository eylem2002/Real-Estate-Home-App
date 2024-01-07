import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';

import 'package:new_batic/firebase_options.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/MapSetup.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/addPlanfloor.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/addhomepic.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/complete_sell_home_screen.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/home%20info.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/location.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/movetime.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/sell%20Home/sell_home_screen.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signin.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:new_batic/view/screen/Sign%20in/up/splash_screen.dart';
import 'package:new_batic/view/widget/BottomNavBar.dart';

Future<void> main() async {
  
  
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
// void main() {
  runApp(const MyApp());
}

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   await FirebaseAppCheck.instance
//   // Your personal reCaptcha public key goes here:
//       .activate(
//     androidProvider: AndroidProvider.debug,
//     appleProvider: AppleProvider.debug,
//     webProvider: ReCaptchaV3Provider('AIzaSyCsYYniikTgWYe7nd0dTtjjnFcDYdwzyQQ'),
//   );
// // void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
   
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    
      routes: {
        
        "signin": (context) => LogIn(),
        "signup": (context) => SingUpScreen(),
        "search_home_bar": (context) => CustomeBottomNavBar(),
        "sellhome": (context) => SellHomeScreen(),
        "complete_page": (context) => CompleteSellHomeScreen(),
        "location_select": (context) => location_both(),
        "movetime_page": (context) => MoveTime(),
        "add_home_info": (context) => HomeInfo(),
        "image_pick": (context) => ImagePick(),
        "map_setup": (context) => MapSetUp(),
        "home_images": (context) => HomeImages(),
        "custome_bottomNavBar": (context) => CustomeBottomNavBar(),
        "BothPages": (context) => CompleteSellHomeScreen(),

      },
      
    );
  }
}
