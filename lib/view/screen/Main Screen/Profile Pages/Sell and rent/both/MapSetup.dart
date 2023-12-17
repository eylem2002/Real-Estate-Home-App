// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:new_batic/controller/Home_controller.dart';
import 'package:new_batic/view/widget/BottomNavBar.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/core/services/MapScreen%202.dart';

class MapSetUp extends StatefulWidget {
  const MapSetUp({super.key});

  @override
  State<MapSetUp> createState() => _MapSetUpState();
}

class _MapSetUpState extends State<MapSetUp> {
  HomeConroller homeconroller = HomeConroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(widthNHeight0(context, 1) * 0.02),
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
                  color: Colors.white,//32.482289, 36.001511
                  size: widthNHeight0(context, 1) * 0.04,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Text(
              'Home location',
              style: TextStyle(
                fontSize: widthNHeight0(context, 1) * 0.065,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
              ),
            ),
          ],
        ),
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
                          'Add your home to the map',
                          style: TextStyle(
                              fontSize: widthNHeight0(context, 1) * 0.052,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kadwa',
                              color: Color(0xff263238)),
                        ),
                      ),
                      SizedBox(
                        width: widthNHeight0(context, 1) * 0.89,
                        child: Text(
                          'This helps the customer see your home location clearly.',
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Longitude",
                                    style: TextStyle(color: Color(0xff6B7378)),
                                  ),
                                  TextFormWidget(
                                    height: widthNHeight0(context, 1) * 0.2,
                                    width: widthNHeight0(context, 0) * 0.2,
                                    passToggle: false,
                                    maxlog: 12,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter the Longitude';
                                      }
                                      return null;
                                    },
                                    passController: homeconroller.longi,
                                    str: '',
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Latitude",
                                    style: TextStyle(color: Color(0xff6B7378)),
                                  ),
                                  TextFormWidget(
                                    height: widthNHeight0(context, 1) * 0.2,
                                    width: widthNHeight0(context, 0) * 0.2,
                                    passToggle: false,
                                    maxlog: 12,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter the Latitude';
                                      }
                                      return null;
                                    },
                                    passController: homeconroller.lati,
                                    str: '',
                                  ),
                                ],
                              )
                            ],
                          ), //first line
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.03,
                          ),
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.03,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: widthNHeight0(context, 1) * 0.06,
                      ),
                      Center(
                        child: defaultButton(
                          text: 'Show me the location',
                          font_bor: FontWeight.bold,
                          textalign: TextAlign.center,
                          textColor: Colors.black,
                          function: () {
                            if (homeconroller.formKey.currentState!
                                .validate()) {}
                          },
                          onPressed: () {
                            if (homeconroller.longi.text.isNotEmpty &&
                                homeconroller.lati.text.isNotEmpty) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MapScreenLocation(
                                    lon: double.tryParse(homeconroller.longi.text) ?? 0,
                                    lat: double.tryParse(homeconroller.lati.text) ?? 0,
                                  ),
                                ),
                              );
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
                          background: Color(0xffCCD8F4),
                          borderWidth: 10,
                          width: widthNHeight0(context, 1) * 0.5,
                          height: widthNHeight0(context, 1) * 0.25,
                          borderRadius: 5,
                        ),
                      ),
                      SizedBox(
                        height: widthNHeight0(context, 1) * 0.3,
                      ),
                      Center(
                        child: defaultButton(
                          text: 'Done',
                          function: () {
                            if (homeconroller.formKey.currentState!
                                .validate()) {}
                          },
                          onPressed: () {
                            if (homeconroller.formKey.currentState!
                                .validate()) {
                              double longitude =
                                  double.tryParse(homeconroller.longi.text) ?? 0;
                              double latitude =
                                  double.tryParse(homeconroller.lati.text) ?? 0;

                              if (longitude != 0 && latitude != 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CustomeBottomNavBar(
                                     
                                    ),
                                  ),
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Error'),
                                      content: Text(
                                          'Please enter valid longitude and latitude values.'),
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
                            }
                          },
                          borderWidth: 10,
                          width: widthNHeight0(context, 1) * 0.6,
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
