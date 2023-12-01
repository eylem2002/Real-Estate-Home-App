// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signin.dart';

class header extends StatefulWidget {
  const header({super.key});

  @override
  State<header> createState() => _headerState();
}

class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.only(top:  widthNHeight0(context, 0) * 0.099,left:  widthNHeight0(context, 1) * 0.010,),
            child: Container(

             
                width: widthNHeight0(context, 1) * 0.908,
                height: widthNHeight0(context, 0) * 0.058,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color(0xFF263238),width: 2), 
                  borderRadius: BorderRadius.circular(
                      5.0), 
                ),
                child:  Row(
               
                  children: [
  SizedBox(width: widthNHeight0(context, 1) * 0.02,),
                   const Icon(
                    
                      Icons.flag, 
                      color: Color(
                          0xFF263238),
                    ),
                    SizedBox(width: widthNHeight0(context, 1) * 0.03),
                   const  Text(

                      'Amman',/////here is the text edit to be variable
                      style: TextStyle (
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Kadwa',
                    fontSize: 16.6,
                        color: Color(
                            0xFF263238),
                      ),textAlign: TextAlign.left,
                    ),
                  ],
                )
                
                
                ),
          ),
           SizedBox(height: widthNHeight0(context, 0) * 0.030),
  SizedBox(

    child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the home page here
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => home(),
                    //   ),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFCCD8F4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: buildButtonContent(Icons.sort_rounded, 'Sort'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the filter page here
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => SecondPage(),
                    //   ),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFCCD8F4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: buildButtonContent(
                    Icons.loop,
                    'Filter',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the Map page here
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => ThirdPage(),
                    //   ),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFCCD8F4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: buildButtonContent(Icons.location_on, 'Map'),
                ),
              ],
            ),
  ),
        ],
      ),
    );
  }

  Widget buildButtonContent(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFF263238),
        ),
        const SizedBox(width: 10.0,height: 50,),
        Text(
          text,
          
          style: const TextStyle(
            color: Color(0xFF263238),
            fontFamily: 'Kadwa',
          
            fontSize: 15
          ),
        ),
      ],
    );
  }
}