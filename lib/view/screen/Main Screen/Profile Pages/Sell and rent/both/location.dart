// ignore_for_file: camel_case_types, unused_import, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/controller/signup_controller.dart';
import 'package:new_batic/core/class/sharedData.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/movetime.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';

class location_both extends StatefulWidget {
  const location_both({super.key});

  @override
  State<location_both> createState() => _location_bothState();
}

class _location_bothState extends State<location_both> {
  String str1 = "";
  String str2 = "";
  List<dynamic> Alloptions3 = [];
  TextEditingController moreDetailsController = TextEditingController();

  SignUpController signUpController = SignUpController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(widthNHeight0(context, 1) * 0.02),
          // child: Center(
          //   child: CircleAvatar(
          //     backgroundColor: Colors.black,
          //     radius: 15,
          //     child: IconButton(
          //       onPressed: () {
          //         Navigator.of(context).pop();
          //       },
          //       icon: Icon(
          //         Icons.arrow_back_ios_new_outlined,
          //         color: Colors.white,
          //         size: widthNHeight0(context, 1) * 0.04,
          //       ),
          //     ),
          //   ),
          // ),
        ),
        backgroundColor: Colors.white,
        title: Text('Complete',
            style: TextStyle(
                fontSize: widthNHeight0(context, 1) * 0.065,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
                color: Color(0xff263238))),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: signUpController.formKey,
          child: Column(
            children: [
              Divider(
                  height: widthNHeight0(context, 1) * 0.01,
                  color: Colors.grey[300]),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: widthNHeight0(context, 1) * 0.055,
                      right: widthNHeight0(context, 1) * 0.055),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: widthNHeight0(context, 1) * 0.05,
                        ),
                        child: Text(
                          'Let’s verify some home facts',
                          style: TextStyle(
                              fontSize: widthNHeight0(context, 1) * 0.052,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kadwa',
                              color: Color(0xff263238)),
                        ),
                      ),
                      Container(
                        width: widthNHeight0(context, 1) * 0.89,
                        child: Text(
                          'This helps your agent prepare the most accurate home estimate.',
                          style: TextStyle(
                            fontSize: widthNHeight0(context, 1) * 0.035,
                            color: Color(0xff6B7378),
                            fontFamily: 'Kadwa',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: widthNHeight0(context, 1) * 0.04,
                      ),
                      Text(
                        "Phone Number",
                        style: TextStyle(color: Color(0xff6B7378)),
                      ),
                      SizedBox(
                        height: widthNHeight0(context, 1) * 0.02,
                      ),
                      TextFormWidget(
                        height: widthNHeight0(context, 1) * 0.2,
                        width: double.infinity,
                        passToggle: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter the ';
                          }

                          return null;
                        },
                        passController: signUpController.firstName,
                        str: 'Amman,Star Street',
                      ),
                      SizedBox(
                        height: widthNHeight0(context, 1) * 0.034,
                      ),
                      Text(
                        "Building Name",
                        style: TextStyle(color: Color(0xff6B7378)),
                      ),
                      SizedBox(
                        height: widthNHeight0(context, 1) * 0.02,
                      ),
                      TextFormWidget(
                        height: widthNHeight0(context, 1) * 0.2,
                        width: double.infinity,
                        passToggle: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter the Building Name';
                          }
                          return null;
                        },
                        passController: signUpController.secondName,
                        str: 'Starlink',
                      ),
                      SizedBox(
                        height: widthNHeight0(context, 1) * 0.034,
                      ),
                      Text(
                        "More details",
                        style: TextStyle(color: Color(0xff6B7378)),
                      ),
                      SizedBox(
                        height: widthNHeight0(context, 1) * 0.02,
                      ),
                      TextFormField(
                        controller: moreDetailsController,
                        maxLines: null,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF6482C4)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF6482C4)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF6482C4)),
                          ),
                          filled: false,
                        ),
                      ),
                      SizedBox(
                        height: widthNHeight0(context, 1) * 0.1,
                      ),
                      Center(
                        child: defaultButton(
                          text: 'Next',
                          function: () {
                            if (signUpController.formKey.currentState!
                                .validate()) {}
                          },
                          onPressed: () {
                            String moreDetails = moreDetailsController.text;
                            str1 = signUpController.firstName.text;
                            str2 = signUpController.secondName.text;
                            Alloptions3.add(str1);
                            Alloptions3.add(str2);
                            Alloptions3.add(moreDetails);
                            print(Alloptions3);
                           

                            shared_data.add({'home_location': Alloptions3});
                            print(shared_data[2]['home_location']);

                            Navigator.of(context)
                                .pushReplacementNamed("movetime_page");
                          },
                          borderWidth: 10,
                          width: widthNHeight0(context, 1) * 0.5,
                          height: widthNHeight0(context, 1) * 0.12,
                          borderRadius: 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: widthNHeight0(context, 1) * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
