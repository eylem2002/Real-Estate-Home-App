import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final bool passToggle;
  final String label_text;
  final TextEditingController passController;
  final String? Function(String?)? validat;
  final String str;

  const TextFormFieldWidget({
    super.key,
    required this.passToggle,
    required this.passController,
    required this.label_text,
    required this.validat,
    required this.str,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
          child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        obscureText: passToggle,
        controller: passController,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color(0xff6482c4).withOpacity(0.8),
                      width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xff6482c4).withOpacity(0.8),
                width: 2,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          labelText: label_text,
          contentPadding: const EdgeInsets.all(24),
          isDense: true,
          hintText: str,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        validator: validat,
      )),
    );
  }
}
