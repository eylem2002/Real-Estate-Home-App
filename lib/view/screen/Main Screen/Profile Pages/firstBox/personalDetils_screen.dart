// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:new_batic/controller/login_controller.dart';
import 'package:new_batic/controller/signup_controller.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';

class PersdonalDetilsScreen extends StatefulWidget {
  const PersdonalDetilsScreen({super.key});

  @override
  State<PersdonalDetilsScreen> createState() => _PersdonalDetilsScreenState();
}

class _PersdonalDetilsScreenState extends State<PersdonalDetilsScreen> {
  SignUpController signUpController = SignUpController();
  TextController textController = TextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(9),
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 15,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: const Text('Personal Details',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
              )),
        ),
      ),
      body: Form(
        key: signUpController.formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Center(
              child: SizedBox(
                width: widthNHeight0(context, 1) * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(height: 1, color: Colors.grey[300]),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: const Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kadwa',
                        ),
                      ),
                    ),
                    TextFormWidget(
                      height: widthNHeight0(context, 1)*0.2,
                      width: double.infinity,
                      passToggle: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ' Name must not be empty ';
                        }
                        return null;
                      },
                      passController: signUpController.firstName,
                      str: 'Batic',
                    ),
                     SizedBox(height:   widthNHeight0(context, 1)*0.008,),
                    const Text(
                      'Email Address',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                    TextFormWidget(
                       height: widthNHeight0(context, 1)*0.2,
                      width: double.infinity,
                      passToggle: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email must not be empty ';
                        }
                        return null;
                      },
                      passController: signUpController.email,
                      str: 'Batic@gmail.com',
                    ),
                    SizedBox(height:   widthNHeight0(context, 1)*0.008,),
                    const Text(
                      'Phone',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                    TextFormWidget(
                       height: widthNHeight0(context, 1)*0.2,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Phone must not be empty ';
                        }
                        return null;
                      },
                      width: double.infinity,
                      passToggle: false,
                      passController: signUpController.phone,
                      str: '0798972344',
                    ),
                     SizedBox(height:   widthNHeight0(context, 1)*0.008,),
                    const Text(
                      'Country',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                    TextFormWidget(
                      height: widthNHeight0(context, 1)*0.2,
                      width: double.infinity,
                      passToggle: false,
                      validator: (value) {},
                      passController: signUpController.secondName,
                      str: 'Jordan',
                    ),
                     SizedBox(height:   widthNHeight0(context, 1)*0.05,),
                    
                    
                    Center(
                      child: defaultButton(
                        text: 'Update',
                        function: () {
                          if (signUpController.formKey.currentState!
                              .validate()) {}
                        },
                        onPressed: () {},
                        borderWidth: 10,
                        width: widthNHeight0(context, 1)*0.6,
                        height: widthNHeight0(context, 1)*0.12,
                        borderRadius: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
