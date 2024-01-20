// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:new_batic/core/class/sharedData.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';

class RentScreen extends StatefulWidget {
  const RentScreen({super.key});

  @override
  State<RentScreen> createState() => _RentScreenState();
}

class _RentScreenState extends State<RentScreen> {
  static String rent_for = "Monthly";
  bool isMonthlySelected = true;
  bool isYearlySelected = false;

  void selectMonthly() {
    setState(() {
      rent_for = "Monthly";
      isMonthlySelected = true;
      isYearlySelected = false;
    });
  }

  void selectYearly() {
    setState(() {
      rent_for = "Yearly";
      isMonthlySelected = false;
      isYearlySelected = true;
    });
  }

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
          child: Text(
            'List my Home For Rent',
            style: TextStyle(
              fontSize: widthNHeight0(context, 1) * 0.058,
              fontWeight: FontWeight.bold,
              fontFamily: 'Kadwa',
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(
            height: widthNHeight0(context, 1) * 0.01,
            color: Colors.grey[300],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: widthNHeight0(context, 1) * 0.04,
              left: widthNHeight0(context, 1) * 0.05,
              right: widthNHeight0(context, 1) * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "When do you plan to collect the \nrent for your property?",
                  style: TextStyle(
                    fontSize: widthNHeight0(context, 1) * 0.05,
                    color: Color(0xFF263238),
                    fontWeight: FontWeight.w600,
                    fontFamily: "kadwa",
                  ),
                ),
                SizedBox(height: widthNHeight0(context, 1) * 0.065),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    defaultButton(
                      text: 'Monthly',

                      onPressed: selectMonthly,
                      width: widthNHeight0(context, 0) * 0.165,
                      borderWidth: 10,
                      height: widthNHeight0(context, 1) * 0.12,
                      borderRadius: 5,
                        textColor: Colors.black,
                      background: isMonthlySelected
                          ?  Color(0xffCCD8F4) // Change the color as per your requirement
                          : Colors.white,
                    ),
                    SizedBox(width: 16),
                    defaultButton(
                      text: 'Yearly',
                      onPressed: selectYearly,
                      width: widthNHeight0(context, 0) * 0.165,
                      borderWidth: 10,
                      height: widthNHeight0(context, 1) * 0.12,
                      borderRadius: 5,
                      textColor: Colors.black,
                      background: isYearlySelected
                          ?  Color(0xffCCD8F4) // Change the color as per your requirement
                          : Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: widthNHeight0(context, 1) * 0.2),
                Center(
                  child: defaultButton(
                    text: 'Next',
                    onPressed: () {
                      shared_data.add({'rent_Time': rent_for});
                      print(shared_data[0]['rent_Time']);
                      Navigator.of(context).pushReplacementNamed("BothPages");
                    },
                    width: widthNHeight0(context, 0) * 0.15,
                    borderWidth: 4,
                    background: Colors.white,
                    textColor: Color(0xff6482C4),
                    height: widthNHeight0(context, 1) * 0.12,
                    borderRadius: 5,
                    font_bor: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
