// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget defaultButton4({
  double width = double.infinity,
  double height = 50.0,
  Color borderColor = const Color(0xff1A3166),
  Color background = const Color(0xff1A3166),
  Color textColor = Colors.black,
  final Function()? function,
  required String text,
  double fontSize = 20.0,
  double borderRadius = 20.0,
 required void Function() onPressed,
  required int borderWidth, // Change this line
}) => Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        
        border: Border.all(color: borderColor,width: 2.5),
        color: background,
      ),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(
        onPressed: onPressed, // Change this line
        child: Text(
          text,
          style: TextStyle(

            fontWeight: FontWeight.w700,
            color: textColor,
            fontSize: fontSize,
            
            fontFamily: 'Kadwa',
          ),
        ),
      ),
    );
