import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/signin.dart';

import '../widget/compoents/defaultFormField.dart';

class SearchBarScreen extends StatelessWidget {
  SearchBarScreen({super.key});

  final TextEditingController _controller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(widthNHeight0(context, 1)*0.05),
              child: Row(
                children: [
                  SizedBox(
                    width: widthNHeight0(context, 1)*0.07,
                    child: Image.asset('assets/images/close.png'),
                  ),
                  TextFormFieldWidget(
                      passToggle: true,
                      passController: _controller,
                      label_text: 'password',
                      validat: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (value.length < 6) {
                          return "Password length should be more than 6 characters";
                        } else {
                          return null;
                        }
                      },
                      str: " Enter Password")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
