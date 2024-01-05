import 'package:flutter/material.dart';
import 'package:new_batic/core/class/sharedData.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';

class MoveTime extends StatefulWidget {
  const MoveTime({Key? key}) : super(key: key);

  @override
  _MoveTimeState createState() => _MoveTimeState();
}

class _MoveTimeState extends State<MoveTime> {
  String selectedTimeMove = "Ready to move";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(widthNHeight0(context, 1) * 0.02),
          child: Center(),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Move Time',
          style: TextStyle(
            fontSize: widthNHeight0(context, 1) * 0.063,
            fontWeight: FontWeight.bold,
            fontFamily: 'Kadwa',
            color: Color(0xff263238),
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(
            height: widthNHeight0(context, 1) * 0.01,
            color: Colors.grey[300],
          ),

          ///////
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: widthNHeight0(context, 1) * 0.055,
                right: widthNHeight0(context, 1) * 0.055,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: widthNHeight0(context, 1) * 0.05,
                    ),
                    child: Text(
                      'How soon do you want to move?',
                      style: TextStyle(
                        fontSize: widthNHeight0(context, 1) * 0.052,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                        color: Color(0xff263238),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: widthNHeight0(context, 1) * 0.89,
                    child: Text(
                      'Our agent will provide the best guidance based on your timeline',
                      style: TextStyle(
                        fontSize: widthNHeight0(context, 1) * 0.035,
                        color: Color(0xff6B7378),
                        fontFamily: 'Kadwa',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.08,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        buildButton('Within 3 days'),
                        SizedBox(height: widthNHeight0(context, 1) * 0.065),
                        buildButton('Within 1 week'),
                        SizedBox(height: widthNHeight0(context, 1) * 0.065),
                        buildButton('Within 1 month'),
                        SizedBox(height: widthNHeight0(context, 1) * 0.065),
                        buildButton('In more than 2 months'),
                        SizedBox(height: widthNHeight0(context, 1) * 0.065),
                        buildButton('Ready'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.18,
                  ),
                  Center(
                    child: defaultButton(
                      text: 'Next',
                      function: () {
                        // if (signUpController.formKey.currentState!
                        //     .validate()) {}
                      },
                      onPressed: () {
                        shared_data.add({'add_time_move': selectedTimeMove});
                        print(shared_data[3]['add_time_move']);
                        Navigator.of(context)
                            .pushReplacementNamed("add_home_info");
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
        ],
      ),
    );
  }

  Widget buildButton(String text) {
    return defaultButton(
      text: text,
      function: () {
        // if (signUpController.formKey.currentState!
        //     .validate()) {}
      },
      onPressed: () {
        setState(() {
          selectedTimeMove = text;
        });
      },
      borderWidth: 10,
      fontSize: widthNHeight0(context, 1) * 0.045,
      width: widthNHeight0(context, 1) * 0.85,
      background: selectedTimeMove == text ?   Color(0xffCCD8F4) : Colors.white,
      textColor: selectedTimeMove == text ? Colors.black : Color(0xff6B7378),
      height: widthNHeight0(context, 1) * 0.12,
      borderRadius: 5,
    );
  }
}
