// ignore_for_file: unused_import, override_on_non_overriding_member, non_constant_identifier_names, annotate_overrides, camel_case_types, body_might_complete_normally_nullable, sized_box_for_whitespace, file_names
//5
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/controller/Home_controller.dart';
// import 'package:new_batic/core/class/Fire_Store.dart';
import 'package:new_batic/core/class/sharedData.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/addPlanfloor.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/movetime.dart';
import 'package:new_batic/view/widget/compoents/Textfiled2.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';

class HomeInfo extends StatefulWidget {
  const HomeInfo({super.key});

  @override
  State<HomeInfo> createState() => _homeInfoState();
}

class _homeInfoState extends State<HomeInfo> {
  HomeConroller homeconroller = HomeConroller();
  @override
  String selectedValue = '';
  String Furnished = '';
  String selectedGovernorates = '';
  String s1 = "", s2 = "",s3="";

  List<dynamic> Alloptions3 = [];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(widthNHeight0(context, 1) * 0.02),
          child: Center(
              // child: CircleAvatar(
              //   backgroundColor: Colors.black,
              //   radius: 15,
              //   child: IconButton(
              //     onPressed: () {
              //       Navigator.of(context).pop();
              //     },
              //     icon: Icon(
              //       Icons.arrow_back_ios_new_outlined,
              //       color: Colors.white,
              //       size: widthNHeight0(context, 1) * 0.04,
              //     ),
              //   ),
              // ),
              ),
        ),
        backgroundColor: Colors.white,
        title: Text('Home Info',
            style: TextStyle(
                fontSize: widthNHeight0(context, 1) * 0.065,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
                color: Color(0xff263238))),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: homeconroller.formKey,
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
                          'Let\'s verify some home facts',
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment:
                            CrossAxisAlignment.center, //error here
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sq.Ft",
                                    style: TextStyle(color: Color(0xff6B7378)),
                                  ),
                           TextFormWidget2(
                                    height: widthNHeight0(context, 1) * 0.2,
                                    width: widthNHeight0(context, 0) * 0.2,
                                    passToggle: false,
                                    maxlog: 6,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter the Sq.Ft';
                                      }
                                    },
                                    passController: homeconroller.sqft,
                                    str: '',
                                    
                                 
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Built-up-area",
                                    style: TextStyle(color: Color(0xff6B7378)),
                                  ),
                                  TextFormWidget2(
                                    height: widthNHeight0(context, 1) * 0.2,
                                    width: widthNHeight0(context, 0) * 0.2,
                                    passToggle: false,
                                    maxlog: 6,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter the Built-up-area';
                                      }
                                    },
                                    passController: homeconroller.builtarea,
                                    str: '',
                                  ),
                                ],
                              )
                            ],
                          ), //first line
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ownership",
                                    style: TextStyle(color: Color(0xff6B7378)),
                                  ),
                                  TextFormWidget(
                                    maxlog: 10,
                                    height: widthNHeight0(context, 1) * 0.2,
                                    width: widthNHeight0(context, 0) * 0.2,
                                    passToggle: false,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter the Ownership';
                                      }
                                    },
                                    passController: homeconroller.Ownership,
                                    str: '',
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total flour",
                                    style: TextStyle(color: Color(0xff6B7378)),
                                  ),
                                  TextFormWidget2(
                                    maxlog: 2,
                                    height: widthNHeight0(context, 1) * 0.2,
                                    width: widthNHeight0(context, 0) * 0.2,
                                    passToggle: false,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter the Total flour';
                                      }
                                    },
                                    passController: homeconroller.total,
                                    str: '',
                                  ),
                                ],
                              )
                            ],
                          ),
//second line
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Balcony size",
                                    style: TextStyle(color: Color(0xff6B7378)),
                                  ),
                                  TextFormWidget2(
                                    maxlog: 6,
                                    height: widthNHeight0(context, 1) * 0.2,
                                    width: widthNHeight0(context, 0) * 0.2,
                                    passToggle: false,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter the Balcony size';
                                      }
                                    },
                                    passController: homeconroller.balcony,
                                    str: '',
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Price",
                                    style: TextStyle(color: Color(0xff6B7378)),
                                  ),
                                  TextFormWidget2(
                                    maxlog: 7,
                                    height: widthNHeight0(context, 1) * 0.2,
                                    width: widthNHeight0(context, 0) * 0.2,
                                    passToggle: false,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter the Price';
                                      }
                                    },
                                    passController: homeconroller.price,
                                    str: '',
                                  ),
                                ],
                              )
                            ],
                          ),
                          //3 line
                          //second line
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.03,
                          ),
                     
                          //line num4
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Disabled Services',
                                    style: TextStyle(
                                      fontSize:
                                          widthNHeight0(context, 1) * 0.033,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Kadwa',
                                    ),
                                  ),
                                  SizedBox(
                                    height: widthNHeight0(context, 1) * 0.018,
                                  ),
                                  Container(
                                    width: widthNHeight0(context, 1) * 0.4,
                                    height: widthNHeight0(context, 1) * 0.119,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6482C4)),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: DropdownButton<String>(
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Kadwa',
                                        ),
                                        isExpanded: true,
                                        iconSize: 30,
                                        value: s1,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            s1 = newValue!;
                                          });
                                        },
                                        items: <String>['', 'Yes', 'No']
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  fontSize: widthNHeight0(
                                                          context, 1) *
                                                      0.045),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              )

                              ///
                              ,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Parking availability',
                                    style: TextStyle(
                                      fontSize:
                                          widthNHeight0(context, 1) * 0.033,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Kadwa',
                                    ),
                                  ),
                                  SizedBox(
                                    height: widthNHeight0(context, 1) * 0.018,
                                  ),
                                  Container(
                                    width: widthNHeight0(context, 1) * 0.4,
                                    height: widthNHeight0(context, 1) * 0.119,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6482C4)),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: DropdownButton<String>(
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Kadwa',
                                        ),
                                        isExpanded: true,
                                        iconSize: 30,
                                        value: s2,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            s2 = newValue!;
                                          });
                                        },
                                        items: <String>['', 'Yes', 'No']
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  fontSize: widthNHeight0(
                                                          context, 1) *
                                                      0.045),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),     
                          SizedBox(        height: widthNHeight0(context, 1) * 0.06,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Elevators',
                                    style: TextStyle(
                                      fontSize:
                                          widthNHeight0(context, 1) * 0.033,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Kadwa',
                                    ),
                                  ),
                                  SizedBox(
                                    height: widthNHeight0(context, 1) * 0.018,
                                  ),
                                  Container(
                                    width: widthNHeight0(context, 1) * 0.4,
                                    height: widthNHeight0(context, 1) * 0.119,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6482C4)),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: DropdownButton<String>(
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Kadwa',
                                        ),
                                        isExpanded: true,
                                        iconSize: 30,
                                        value: s3,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            s3 = newValue!;
                                          });
                                        },
                                        items: <String>['', 'Yes', 'No']
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  fontSize: widthNHeight0(
                                                          context, 1) *
                                                      0.045),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              
                            ],
                          ),


                          
                        ],
                      ),
                      SizedBox(
                        height: widthNHeight0(context, 1) * 0.08,
                      ),
                      Center(
                        child: defaultButton(
                          text: 'Next',
                          function: () {
                            if (homeconroller.formKey.currentState!
                                .validate()) {}
                          },
                          onPressed: () {
                            if (homeconroller.sqft.text.isNotEmpty &&
                                homeconroller.builtarea.text.isNotEmpty &&
                                homeconroller.Ownership.text.isNotEmpty &&
                                homeconroller.total.text.isNotEmpty &&
                                homeconroller.balcony.text.isNotEmpty &&
                                homeconroller.price.text.isNotEmpty 
                              ) {

                                  if(s1.isEmpty)s1="Yes"; if(s2.isEmpty)s2="Yes"; if(s3.isEmpty)s3="Yes";
                              Alloptions3.add(homeconroller.sqft.text);
                              Alloptions3.add(homeconroller.builtarea.text);
                              Alloptions3.add(homeconroller.Ownership.text);
                              Alloptions3.add(homeconroller.total.text);
                              Alloptions3.add(homeconroller.balcony.text);
                              Alloptions3.add(homeconroller.price.text);
                              Alloptions3.add(s3);
                              // Alloptions3.add(homeconroller.year.text);
                              Alloptions3.add(s1);
                              Alloptions3.add(s2);
                              shared_data.add({'add_home_info': Alloptions3});
                              print(shared_data[4]['add_home_info']);

                              Navigator.of(context)
                                  .pushReplacementNamed("image_pick");
                            } else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Error'),
                                    content: Text('Please fill in all fields.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
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
