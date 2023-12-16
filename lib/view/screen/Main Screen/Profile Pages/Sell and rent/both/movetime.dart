import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/home%20info.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';

class MoveTime extends StatefulWidget {
  const MoveTime({super.key});

  @override
  State<MoveTime> createState() => _MoveTimeState();
}

class _MoveTimeState extends State<MoveTime> {
  static String timemove="Ready";
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
                  color: Colors.white,
                  size: widthNHeight0(context, 1) * 0.04,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text('Move Time',
            style: TextStyle(
                fontSize: widthNHeight0(context, 1) * 0.063,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
                color: Color(0xff263238))),
      ),
      body: Column(
        children: [
          Divider(
              height: widthNHeight0(context, 1) * 0.01,
              color: Colors.grey[300]),

              ///////
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
                          'How soon do you want to move?',
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
                      defaultButton(
                            text: 'Within 3 days',
                   
                            function: () {
                              // if (signUpController.formKey.currentState!
                              //     .validate()) {}
                            },
                            onPressed: () {
                            timemove="Within 3 days";
                   
                   
                            },
                            borderWidth: 10,
                            fontSize:widthNHeight0(context, 1)*0.045,
                            width: widthNHeight0(context, 1) * 0.85,
                            background: Colors.white,
                            textColor: Color(0xff6B7378),
                            height: widthNHeight0(context, 1) * 0.12,
                            borderRadius: 5,
                            
                          ),
                           SizedBox(
                          height: widthNHeight0(context, 1) * 0.065,
                        ),
                      defaultButton(
                            text: 'Within 1 week',
                   
                            function: () {
                              // if (signUpController.formKey.currentState!
                              //     .validate()) {}
                            },
                            onPressed: () {
                            timemove="Within 1 week";
                   
                   
                            },
                            borderWidth: 10,
                            fontSize:widthNHeight0(context, 1)*0.045,
                            width: widthNHeight0(context, 1) * 0.85,
                            background: Colors.white,
                            textColor: Color(0xff6B7378),
                            height: widthNHeight0(context, 1) * 0.12,
                            borderRadius: 5,
                            
                          ),
                          
                       SizedBox(
                          height: widthNHeight0(context, 1) * 0.065,
                        ),
                      defaultButton(
                            text: 'Within 1 month',
                   
                            function: () {
                              // if (signUpController.formKey.currentState!
                              //     .validate()) {}
                            },
                            onPressed: () {
                            timemove="Within 1 month";
                   
                   
                            },
                            borderWidth: 10,
                            fontSize:widthNHeight0(context, 1)*0.045,
                            width: widthNHeight0(context, 1) * 0.85,
                            background: Colors.white,
                            textColor: Color(0xff6B7378),
                            height: widthNHeight0(context, 1) * 0.12,
                            borderRadius: 5,
                            
                          ),
                             SizedBox(
                          height: widthNHeight0(context, 1) * 0.065,
                        ),
                      defaultButton(
                            text: 'In more then 2 months',
                   
                            function: () {
                              // if (signUpController.formKey.currentState!
                              //     .validate()) {}
                            },
                            onPressed: () {
                            timemove="In more then 2 months";
                   
                   
                            },
                            borderWidth: 10,
                            fontSize:widthNHeight0(context, 1)*0.045,
                            width: widthNHeight0(context, 1) * 0.85,
                            background: Colors.white,
                            textColor: Color(0xff6B7378),
                            height: widthNHeight0(context, 1) * 0.12,
                            borderRadius: 5,
                            
                          ),
                           SizedBox(
                           height: widthNHeight0(context, 1) * 0.065,
                        ),
                      defaultButton(
                            text: 'Ready to Move',
                   
                            function: () {
                              // if (signUpController.formKey.currentState!
                              //     .validate()) {}
                            },
                            onPressed: () {
                            timemove="Ready to Move";
                   
                   
                            },
                            borderWidth: 10,
                            fontSize:widthNHeight0(context, 1)*0.045,
                            width: widthNHeight0(context, 1) * 0.85,
                            background: Colors.white,
                            textColor: Color(0xff6B7378),
                            height: widthNHeight0(context, 1) * 0.12,
                            borderRadius: 5,
                            
                          ),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeInfo(),
                                ));
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
}
