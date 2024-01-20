import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/class/type.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/rent%20Home/ForRent.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/sell%20Home/sell_home_screen.dart';
import 'package:new_batic/view/screen/Main%20Screen/Search%20Page/filters_screen.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signin.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  FirebaseAuth auth = FirebaseAuth.instance;
  signOut() async {
    await auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: widthNHeight0(context, 0) * 0.029,
            left: widthNHeight0(context, 1) * 0.010,
          ),
          child: Container(
            width: widthNHeight0(context, 1) * 0.908,
            height: widthNHeight0(context, 0) * 0.058,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF263238), width: 2),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              children: [
                SizedBox(width: widthNHeight0(context, 1) * 0.02),
                const Icon(
                  Icons.flag,
                  color: Color(0xFF263238),
                ),
                SizedBox(width: widthNHeight0(context, 1) * 0.03),
                Text(
                  Area, // Here is the text to be variable
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Kadwa',
                    fontSize: 16.6,
                    color: Color(0xFF263238),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: widthNHeight0(context, 0) * 0.020),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    if (FirebaseAuth.instance.currentUser!.isAnonymous) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xff6482C4),
                            content: Text(
                              'You Have To Sign In First \nTo Sell Your Home!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: widthNHeight0(context, 1) * 0.035,
                                fontFamily: 'Kadwa',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            actions: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      signOut();
                                      print("sign out");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const LogIn(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'SignIn',
                                      style: TextStyle(
                                        fontFamily: 'Kadwa',
                                        color: Colors.white,
                                        fontSize:
                                            widthNHeight0(context, 1) * 0.035,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      Navigator.of(context)
                          .pushNamed("sellhome"); //////sell home
                    }
                   
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: widthNHeight0(context, 1) * 0.14,
                    width: widthNHeight0(context, 0) * 0.14,
                    decoration: BoxDecoration(
                      color: const Color(0xFFCCD8F4),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: buildButtonContent(Icons.sell_outlined, 'Sell'),
                  ),
                ),
                SizedBox(
                  width: widthNHeight0(context, 1) * 0.01,
                ),
                GestureDetector(
                  onTap: () {
                    if (FirebaseAuth.instance.currentUser!.isAnonymous) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xff6482C4),
                            content: Text(
                              'You Have To Sign In First \nTo List Your Home For Rent!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: widthNHeight0(context, 1) * 0.035,
                                fontFamily: 'Kadwa',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            actions: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      signOut();
                                      print("sign out");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const LogIn(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'SignIn',
                                      style: TextStyle(
                                        fontFamily: 'Kadwa',
                                        color: Colors.white,
                                        fontSize:
                                            widthNHeight0(context, 1) * 0.035,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RentScreen(),
                        ),
                      );
                    }
                   
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: widthNHeight0(context, 1) * 0.14,
                    width: widthNHeight0(context, 0) * 0.14,
                    decoration: BoxDecoration(
                      color: const Color(0xFFCCD8F4),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: buildButtonContent(
                        Icons.real_estate_agent_outlined, 'Rent'),
                  ),
                ),
                SizedBox(
                  width: widthNHeight0(context, 1) * 0.01,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FiltersScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: widthNHeight0(context, 1) * 0.14,
                    width: widthNHeight0(context, 0) * 0.14,
                    decoration: BoxDecoration(
                      color: const Color(0xFFCCD8F4),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: buildButtonContent(Icons.loop, 'Filter'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildButtonContent(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFF263238),
        ),
        const SizedBox(width: 10.0, height: 50),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF263238),
            fontFamily: 'Kadwa',
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
