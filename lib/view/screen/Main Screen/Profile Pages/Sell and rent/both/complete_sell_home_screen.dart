// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:new_batic/core/class/sharedData.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';

class CompleteSellHomeScreen extends StatefulWidget {
  const CompleteSellHomeScreen({super.key});
  // final List res_sel;

  @override
  State<CompleteSellHomeScreen> createState() => _CompleteSellHomeScreenState();
}
//
class _CompleteSellHomeScreenState extends State<CompleteSellHomeScreen> {
  String selectedValue = 'Buy';
  String Furnished = 'Yes';
  String selectedGovernorates = 'Amman';
  int BuildingAge = 1;
  int Bedrooms = 1;
  int Bathrooms = 1;
  List<dynamic> Alloptions = [];
  @override
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
              //     icon: Icon(Icons.arrow_back_ios_new_outlined,
              //       color: Colors.white,
              //       size: widthNHeight0(context, 1)*0.04,
              //     ),
              //   ),
              // ),
              ),
        ),
        backgroundColor: Colors.white,
        title: Text('Complete',
            style: TextStyle(
              fontSize: widthNHeight0(context, 1) * 0.065,
              fontWeight: FontWeight.bold,
              fontFamily: 'Kadwa',
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: widthNHeight0(context, 1) * 0.035,
              right: widthNHeight0(context, 1) * 0.035),
          child: Center(
            child: SizedBox(
              width: widthNHeight0(context, 1) * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                      height: widthNHeight0(context, 1) * 0.01,
                      color: Colors.grey[300]),
                  Padding(
                    padding:
                        EdgeInsets.only(top: widthNHeight0(context, 1) * 0.05),
                    child: Text(
                      'Let’s verify some home facts',
                      style: TextStyle(
                        fontSize: widthNHeight0(context, 1) * 0.052,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                  ),
                  SizedBox(
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
                    'Propert Type',
                    style: TextStyle(
                      fontSize: widthNHeight0(context, 1) * 0.033,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.018,
                  ),
                  Container(
                    width: widthNHeight0(context, 1) * 0.9,
                    height: widthNHeight0(context, 1) * 0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<String>(
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Kadwa',
                        ),
                        isExpanded: true,
                        iconSize: 30,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        items: <String>['', 'Rent', 'Buy']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: widthNHeight0(context, 1) * 0.045),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.035,
                  ),
                  Text(
                    'Search Area',
                    style: TextStyle(
                      fontSize: widthNHeight0(context, 1) * 0.033,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.018,
                  ),
                  Container(
                    width: widthNHeight0(context, 1) * 0.9,
                    height: widthNHeight0(context, 1) * 0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<String>(
                        style: TextStyle(
                          fontSize: widthNHeight0(context, 1) * 0.043,
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
                        items: <String>[
                          '',
                          'Amman',
                          'Irbid',
                          'Zarqa',
                          'Balqa',
                          'Mafraq',
                          'Jerash',
                          'Ajloun',
                          'Karak',
                          'Tafilah',
                          'Ma\'an',
                          'Aqaba',
                          'Madaba'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: widthNHeight0(context, 1) * 0.045),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.035,
                  ),
                  Text(
                    'Building Age',
                    style: TextStyle(
                      fontSize: widthNHeight0(context, 1) * 0.033,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.018,
                  ),
                  Container(
                    width: widthNHeight0(context, 1) * 0.9,
                    height: widthNHeight0(context, 1) * 0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<int>(
                        style: TextStyle(
                          fontSize: widthNHeight0(context, 1) * 0.043,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Kadwa',
                        ),
                        isExpanded: true,
                        value: BuildingAge,
                        iconSize: 30,
                        onChanged: (int? newValue) {
                          setState(() {
                            BuildingAge = newValue!;
                          });
                        },
                        items: List<DropdownMenuItem<int>>.generate(
                          50, // Change this number based on your range of numbers
                          (index) => DropdownMenuItem<int>(
                            value: index + 1,
                            child: Text((index + 1).toString()),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.035,
                  ),
                  Text(
                    'Bedrooms',
                    style: TextStyle(
                      fontSize: widthNHeight0(context, 1) * 0.033,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.018,
                  ),
                  Container(
                    width: widthNHeight0(context, 1) * 0.9,
                    height: widthNHeight0(context, 1) * 0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<int>(
                        style: TextStyle(
                          fontSize: widthNHeight0(context, 1) * 0.043,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Kadwa',
                        ),
                        isExpanded: true,
                        value: Bedrooms,
                        iconSize: 30,
                        onChanged: (int? newValue) {
                          setState(() {
                            Bedrooms = newValue!;
                          });
                        },
                        items: List<DropdownMenuItem<int>>.generate(
                          10, // Change this number based on your range of numbers
                          (index) => DropdownMenuItem<int>(
                            value: index + 1,
                            child: Text((index + 1).toString()),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.035,
                  ),
                  Text(
                    'Bathrooms',
                    style: TextStyle(
                      fontSize: widthNHeight0(context, 1) * 0.033,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.018,
                  ),
                  Container(
                    width: widthNHeight0(context, 1) * 0.9,
                    height: widthNHeight0(context, 1) * 0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<int>(
                        style: TextStyle(
                          fontSize: widthNHeight0(context, 1) * 0.043,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Kadwa',
                        ),
                        isExpanded: true,
                        value: Bathrooms,
                        iconSize: 30,
                        onChanged: (int? newValue) {
                          setState(() {
                            Bathrooms = newValue!;
                          });
                        },
                        items: List<DropdownMenuItem<int>>.generate(
                          10, // Change this number based on your range of numbers
                          (index) => DropdownMenuItem<int>(
                            value: index + 1,
                            child: Text((index + 1).toString()),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.035,
                  ),
                  Text(
                    'Furnished',
                    style: TextStyle(
                      fontSize: widthNHeight0(context, 1) * 0.033,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.018,
                  ),
                  Container(
                    width: widthNHeight0(context, 1) * 0.9,
                    height: widthNHeight0(context, 1) * 0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<String>(
                        style: const TextStyle(
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
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: widthNHeight0(context, 1) * 0.045),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.07,
                  ),
                  Center(
                    child: defaultButton(
                      text: 'Next',
                      width: widthNHeight0(context, 1) * 0.5,
                      onPressed: () {
                        //location_both
                        Alloptions.add(selectedValue);
                        Alloptions.add(selectedGovernorates);
                        Alloptions.add(BuildingAge);
                        Alloptions.add(Bedrooms);
                        Alloptions.add(Bathrooms);
                        Alloptions.add(Furnished);

                        shared_data.add(
                          {'Alloptions': Alloptions},
                        );

                        print(Alloptions);
                       
                        print(shared_data[1]);

                        Navigator.of(context)
                            .pushReplacementNamed("location_select");
                      },
                      borderWidth: 10,
                      height: 45,
                      borderRadius: 5,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
