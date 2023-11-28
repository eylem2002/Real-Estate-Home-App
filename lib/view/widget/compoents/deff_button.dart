import 'package:flutter/material.dart';

Widget defaultButton({
  double width=double.infinity,
  double height=50.0,
  Color background=const Color(0xff6482C4),
  final Function()? function,
  required String text,
  double fontSize=20.0,
  double borderRadius=0.0,
})=>Container(
  width: width,
  height: height,
  decoration: BoxDecoration(
    borderRadius: BorderRadiusDirectional.circular(borderRadius),
    color: background ,
  ),
  clipBehavior: Clip.antiAlias,
  child: MaterialButton(

    onPressed:function,
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.white,
        fontSize: fontSize,
        fontFamily: 'Kadwa',
      ),
    ),
  ),
);