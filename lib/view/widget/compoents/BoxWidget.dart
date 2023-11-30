
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoxWidget extends StatelessWidget {
  final String boxName;
  //final IconData iconData;
  final String str;
 // final Color iconColor;
  //final Color boxColor;
  final VoidCallback onPressed;

  const BoxWidget({super.key, 
    required this.boxName,
    required this.str,
   // required this.iconColor,
   // required this.boxColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Call the onPressed callback when the box is tapped
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            
            child: SvgPicture.asset(
              "assets/icons/$str",
              height: 55,
              width: 55,
            //  color: const Color(0xffff7643),
              fit: BoxFit.scaleDown,
            ),
          ),
          const SizedBox(height: 8),
          Text(boxName),
        ],
      ),
    );
  }
}
