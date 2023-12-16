import 'package:flutter/material.dart';
import 'package:new_batic/controller/Home_controller.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/addPlanfloor.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/movetime.dart';
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
                  color: Colors.white,
                  size: widthNHeight0(context, 1) * 0.04,
                ),
              ),
            ),
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
                                  TextFormWidget(
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
                                  TextFormWidget(
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
                                  TextFormWidget(
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
                                  TextFormWidget(
                                    maxlog: 4,
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
                                  TextFormWidget(
                                    maxlog: 6,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Elevators",
                                    style: TextStyle(color: Color(0xff6B7378)),
                                  ),
                                  TextFormWidget(
                                    maxlog: 2,
                                    height: widthNHeight0(context, 1) * 0.2,
                                    width: widthNHeight0(context, 0) * 0.2,
                                    passToggle: false,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter the Elevators num';
                                      }
                                    },
                                    passController: homeconroller.elevetor,
                                    str: '',
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Year of build",
                                    style: TextStyle(color: Color(0xff6B7378)),
                                  ),
                                  TextFormWidget(
                                    maxlog: 4,
                                    height: widthNHeight0(context, 1) * 0.2,
                                    width: widthNHeight0(context, 0) * 0.2,
                                    passToggle: false,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter the Year of build';
                                      }
                                    },
                                    passController: homeconroller.year,
                                    str: '',
                                  ),
                                ],
                              )
                            ],
                          ),
                          //line num4
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text('Disabled Services',
                    style: TextStyle(
                         fontSize: widthNHeight0(context, 1)*0.033,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                   SizedBox(
                      height: widthNHeight0(context, 1)*0.018,
                  ),
                             Container(
                    width: widthNHeight0(context, 1)*0.4,
                    height: widthNHeight0(context, 1)*0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<String>(
                        style:const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Kadwa',
                        ),
                        isExpanded: true,
                        iconSize: 30,
                        value: Furnished,
                        onChanged: (String? newValue) {
                          setState(() {
                            Furnished = newValue!;
                          });
                        },
                        items: <String>['', 'Yes', 'No']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: TextStyle(fontSize: widthNHeight0(context, 1)*0.045),),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                              ],
                             )
                             ///
                             , Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text('Parking availability',
                    style: TextStyle(
                         fontSize: widthNHeight0(context, 1)*0.033,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                   SizedBox(
                      height: widthNHeight0(context, 1)*0.018,
                  ),
                             Container(
                    width: widthNHeight0(context, 1)*0.4,
                    height: widthNHeight0(context, 1)*0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<String>(
                        style:const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Kadwa',
                        ),
                        isExpanded: true,
                        iconSize: 30,
                        value: selectedGovernorates,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedGovernorates = newValue!;
                          });
                        },
                        items: <String>['', 'Yes', 'No']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: TextStyle(fontSize: widthNHeight0(context, 1)*0.045),),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                              ],
                             )
                          ],)


                          
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
                                homeconroller.price.text.isNotEmpty &&
                                homeconroller.elevetor.text.isNotEmpty &&
                                homeconroller.year.text.isNotEmpty) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const ImagePick(),
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
