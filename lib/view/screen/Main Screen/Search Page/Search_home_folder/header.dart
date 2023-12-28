import 'package:flutter/material.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Search%20Page/filters_screen.dart';
class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: widthNHeight0(context, 0) * 0.029,
            left: widthNHeight0(context, 1) * 0.010,
          ),
          child: Container(
            width: widthNHeight0(context, 1) * 0.908,
            height: widthNHeight0(context, 0) * 0.058,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF263238), width: 2),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              children: [
                SizedBox(width: widthNHeight0(context, 1) * 0.02),
                const Icon(
                  Icons.flag,
                  color: Color(0xFF263238),
                ),
                SizedBox(width: widthNHeight0(context, 1) * 0.03),
                const Text(
                  'Amman', // Here is the text to be variable
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Kadwa',
                    fontSize: 16.6,
                    color: Color(0xFF263238),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: widthNHeight0(context, 0) * 0.030),
        SingleChildScrollView(
          
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               GestureDetector(
  onTap: () {
    // Navigate to the home page here
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => home(),
    //   ),
    // );
  },
  child: Container(
    padding: EdgeInsets.all(5),
    height: widthNHeight0(context, 1)*0.14,
    width:widthNHeight0(context, 0)*0.16 ,
  
    decoration: BoxDecoration(
      color: const Color(0xFFCCD8F4),
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: buildButtonContent(Icons.arrow_upward, 'Sort'),
  ),
),

               SizedBox(width: widthNHeight0(context, 1)*0.01,),
                      GestureDetector(
  onTap: () {
    // Navigate to the home page here
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => home(),
    //   ),
    // );
  },
  child: Container(
    padding: EdgeInsets.all(5),
    height: widthNHeight0(context, 1)*0.14,
    width:widthNHeight0(context, 0)*0.16 ,
    decoration: BoxDecoration(
      color: const Color(0xFFCCD8F4),
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: buildButtonContent(Icons.arrow_downward, 'Sort'),
  ),
),
               SizedBox(width: widthNHeight0(context, 1)*0.01,),
                   GestureDetector(
  onTap: () {
    // Navigate to the home page here
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => home(),
    //   ),
    // );
  },
  child: Container(
    padding: EdgeInsets.all(5),
    height: widthNHeight0(context, 1)*0.14,
    width:widthNHeight0(context, 0)*0.16 ,
    decoration: BoxDecoration(
      color: const Color(0xFFCCD8F4),
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: buildButtonContent(Icons.loop, 'Filter'),
  ),
),
              
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildButtonContent(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFF263238),
        ),
        const SizedBox(width: 10.0, height: 50),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF263238),
            fontFamily: 'Kadwa',
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
