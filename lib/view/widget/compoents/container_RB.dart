// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_batic/core/services/EnterSevices.dart';


class ContainerRB extends StatelessWidget {
 final String pic;
 final String headText;

  const ContainerRB(
      {super.key,
      required this.pic,
      required this.headText,
     });

  @override
  Widget build(BuildContext context) {
    return Container(

decoration: BoxDecoration(  borderRadius: BorderRadius.circular(10), color: const Color(0xFFF0F2F6),),
     width: widthNHeight0(context, 1)*0.44 ,
     
      height: widthNHeight0(context, 0)*0.29 ,
     
      padding: const EdgeInsets.only(top:25.0),
      child: Column(
       
      
        children: [
          Text(headText,
            style:const  TextStyle(
              fontFamily: 'Kadwa',
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset(pic,
            width: widthNHeight0(context, 1)*0.43,
            height:widthNHeight0(context, 0)*0.2,
          ),
         
         const  SizedBox(width: 16.0),
          
        ],
        
      ),
    );
    
  }
}