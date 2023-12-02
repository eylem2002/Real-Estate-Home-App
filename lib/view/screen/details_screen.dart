import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_batic/view/screen/signin.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                SvgPicture.asset('assets/images/svg_pic/🦆 icon _heart_.svg'),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xff263238), shape: BoxShape.circle),
            child: Icon(
              Icons.arrow_back_ios_sharp,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(width: double.infinity,height: widthNHeight0(context, 0)*0.02,),
          SizedBox(
            width: widthNHeight0(context, 1)*0.9,
              child: Stack(
                children: [
                  Image.asset(
                      'assets/images/png_pic/photo_2023-11-02_19-55-49.png'),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white38, shape: BoxShape.circle),
                    child: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
