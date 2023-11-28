import 'package:flutter/material.dart';

Widget defaultButton({
  double width=double.infinity,
  double height=50.0,
  Color background=const Color(0xFFFF7643),
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
        fontFamily: 'Muli',
      ),
    ),
  ),
);

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType tybe,
  final Function(String)? onFieldSubmitted,
  final Function(String)?onChanged,
  required String? Function(String?)?validator,
  required String text,
  required String label,
  Function()? onTap,
  double radius=0.0,
  IconData? suffixIcon,
  bool isPassword=false,
  Function()?suffixonPressed,
  bool isClickable=true,
})=>Container(
  width: 350.0,
  height: 80.0,
  child: TextFormField(
    controller: controller,
    keyboardType: tybe,
    onFieldSubmitted: onFieldSubmitted,
    onChanged:onChanged,
    validator:validator,
    obscureText:isPassword,
    style: TextStyle(
      fontFamily: 'Muli',
    ),
    onTap:onTap ,
    enabled:isClickable ,
    decoration: InputDecoration(
      hintText: text,
      labelText: label,
      labelStyle: const TextStyle(
        color: Colors.grey,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(radius),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      suffixIcon:IconButton(
        icon:Icon(suffixIcon) ,
        onPressed: suffixonPressed,
      ),
    ),
  ),
);