import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/signin.dart';

class TextFormFieldWidget extends StatelessWidget {
final double height;
final double width;
final bool passToggle;
final String label_text;
final TextEditingController passController;
final String? Function(String?)?  validat;


  const TextFormFieldWidget({super.key,
  required this.height,
  required this.width,
  required this.passToggle,
  required this.passController,
  required this.label_text,
    required this.validat,




  });

  @override
  Widget build(BuildContext context) {
    return    SizedBox(
      width: widthNHeight0(context, 1)*width,
      height: widthNHeight0(context, 0)*height,
                      child: TextFormField(
                        // keyboardType: TextInputType.emailAddress,
                        obscureText: passToggle,
                        controller: passController,
                        decoration: InputDecoration(
                          labelText:label_text ,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2)),
                          contentPadding: const EdgeInsets.all(20),
                          isDense: true,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                        validator:validat
                      ));
  }
}
