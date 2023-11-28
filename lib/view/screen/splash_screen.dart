import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/signin.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthNHeight0(context, 1),
      height: widthNHeight0(context, 0),
      child: Image.asset('assets/images/batik_splash.png'),
    );
  }
}
