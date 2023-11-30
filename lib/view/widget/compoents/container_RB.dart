import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_batic/view/screen/signin.dart';

class container_RB extends StatelessWidget {
 final String pic;
 final String head_Text;

  const container_RB(
      {super.key,
      required this.pic,
      required this.head_Text,
     });

  @override
  Widget build(BuildContext context) {
    return Container(

decoration: BoxDecoration(  borderRadius: BorderRadius.circular(10), color: Color(0xFFF0F2F6),),
     width: widthNHeight0(context, 1)*0.44 ,
     
      height: widthNHeight0(context, 0)*0.29 ,
     
      padding: EdgeInsets.only(top:25.0),
      child: Column(
       
      
        children: [
          Text(head_Text,
            style:const  TextStyle(
              fontFamily: 'Kadwa',
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset(
            'assets/images/$pic',
            width: widthNHeight0(context, 1)*0.43,
            height:widthNHeight0(context, 0)*0.2,
          ),
         
         const  SizedBox(width: 16.0),
          
        ],
        
      ),
    );
    
  }
}