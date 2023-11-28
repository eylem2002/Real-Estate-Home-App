import 'package:flutter/material.dart';

Widget defaultButton({
  double width=double.infinity,
  double height=50.0,
  Color background=const Color(0xFF6482C4),
  Color TextColor= Colors.white,
  Color borderColor=const Color(0xFF6482C4),
  final Function()? function,
  required String text,
  double fontSize=20.0,
  double borderRadius=0.0,
})=>Container(
  width: width,
  height: height,
  decoration: BoxDecoration(
    border: Border.all(color:borderColor),
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
        color: TextColor,
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
  required String label,
  Function()? onTap,
  bool isPassword=false,
  Function()?suffixonPressed,
  bool isClickable=true,
})=>Container(
  width: 360,
    height: 70,
    child: TextFormField(
      onTap: onTap,
        obscureText: isPassword,
      keyboardType: tybe,
      controller: controller,
      decoration: InputDecoration(
        labelText:label ,
        focusedBorder:const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff6482C4)),
          borderRadius:BorderRadius.all(Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderSide:const BorderSide(color: Color(0xff6482C4)),
          borderRadius: BorderRadius.circular(10),

        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: validator
    ));