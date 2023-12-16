import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/both/complete_sell_home_screen.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';

class RentScreen extends StatefulWidget {
  const RentScreen({super.key});

  @override
  State<RentScreen> createState() => _RentScreenState();
}

class _RentScreenState extends State<RentScreen> {
  static String rent_for="Monthly";
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
            child: Text('List my Home For Rent',
                style: TextStyle(
                  fontSize: widthNHeight0(context, 1) * 0.058,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kadwa',
                )),
          ),
        ),
        body: Column(
          children: [
            Divider(
                height: widthNHeight0(context, 1) * 0.01,
                color: Colors.grey[300]),
            Padding(
              padding: EdgeInsets.only(
                  top: widthNHeight0(context, 1) * 0.04,
                  left: widthNHeight0(context, 1) * 0.05,
                  right: widthNHeight0(context, 1) * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "When do you plan to collect the \nrent for your property?",
                    style: TextStyle(
                        fontSize: widthNHeight0(context, 1) * 0.05,
                        color: Color(0xFF263238),
                        fontWeight: FontWeight.w600,
                        fontFamily: "kadwa"),
                  ),
                  SizedBox(height: widthNHeight0(context, 1) * 0.065),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      defaultButton(
                        text: 'Monthly',
                        onPressed: () {
                          rent_for="Monthly";
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const CompleteSellHomeScreen(),
                          //     )

                          //     );
                        },
                        width: widthNHeight0(context, 0) * 0.165,
                        borderWidth: 10,
                        height: widthNHeight0(context, 1) * 0.12,
                        borderRadius: 5,
                      ),
                      SizedBox(width: 16),
                      defaultButton(
                        text: 'Yearly',
                        onPressed: () {
                             rent_for="Yearly";
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const CompleteSellHomeScreen(),
                          //     )

                          //     );
                        },
                        width: widthNHeight0(context, 0) * 0.165,
                        borderWidth: 10,
                        height: widthNHeight0(context, 1) * 0.12,
                        borderRadius: 5,
                      ),
                    ],
                  ),
                  SizedBox(height: widthNHeight0(context, 1)*0.2),
                 Center(
                   child: defaultButton(
                          text: 'Next',
                          
                          onPressed: () {
                             
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CompleteSellHomeScreen(),
                                )
                   
                                );
                          },
                          width: widthNHeight0(context, 0) * 0.15,
                          borderWidth: 4,
                          background: Colors.white,
                          
                          textColor: Color(0xff6482C4),
                          height: widthNHeight0(context, 1) * 0.12,
                          borderRadius: 5,
                          font_bor:FontWeight.w600
                          
                        ),
                 ),
                ],
              ),
            ),
          ],
        ));
  }
}
