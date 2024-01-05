import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signin.dart';
import 'package:new_batic/view/widget/BottomNavBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
      () => (FirebaseAuth.instance.currentUser != null)  // &&FirebaseAuth.instance.currentUser!.emailVerified
          ? Navigator.of(context).pushReplacementNamed("search_home_bar")
          // Navigator.push(
          //     // &&FirebaseAuth.instance.currentUser!.emailVerified
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const CustomeBottomNavBar(),
          //     ))
          : Navigator.of(context).pushReplacementNamed("signin")
          // Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const LogIn(),
          //     )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthNHeight0(context, 1),
      height: widthNHeight0(context, 0),
      child: Image.asset(
          fit: BoxFit.cover, 'assets/images/png_pic/batik_splash.png'),
    );
  }
}
