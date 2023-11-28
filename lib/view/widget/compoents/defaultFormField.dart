import 'package:flutter/material.dart';

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
      fontFamily: 'Kadwa',
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