// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/rent%20Home/ForRent.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/firstBox/ChnagePass.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/firstBox/personalDetils_screen.dart';
import 'package:new_batic/view/screen/Main%20Screen/Profile%20Pages/Sell%20and%20rent/sell%20Home/sell_home_screen.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signup_screen.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});

  @override
  State<ScreenProfile> createState() => _EngineerScreenState();
}

class _EngineerScreenState extends State<ScreenProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Account',
              style: TextStyle(
                fontSize: widthNHeight0(context, 1) * 0.066,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
              )),
              
        ),
         automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
                height: widthNHeight0(context, 1) * 0.01,
                color: Colors.grey[300]),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                  left: widthNHeight0(context, 1) * 0.03,
                  top: widthNHeight0(context, 1) * 0.035,
                  right: widthNHeight0(context, 1) * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello ${'Alaa'}',
                    style: TextStyle(
                      fontSize: widthNHeight0(context, 1) * 0.064,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.04,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: const Color(0xffF0F2F5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(widthNHeight0(context, 1) * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PROFILE',
                            style: TextStyle(
                              color: Color(0xff263238),
                              fontSize: widthNHeight0(context, 1) * 0.044,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kadwa',
                            ),
                          ),
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.04,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const PersdonalDetilsScreen(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 17),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.person,
                                          color: Color(0xff263238)),
                                      SizedBox(
                                          width: widthNHeight0(context, 0) *
                                              0.015),
                                      Text(
                                        'Personal details',
                                        style: TextStyle(
                                          fontSize:
                                              widthNHeight0(context, 1) * 0.038,
                                          fontFamily: 'Kadwa',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: widthNHeight0(context, 1) * 0.04,
                                    color: Color(0xff263238),
                                  ),
                                ],
                              ),
                            ),
                          ),
                       
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.05,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const changePass(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 17),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.lock,
                                          color: Color(0xff263238)),
                                      SizedBox(
                                          width: widthNHeight0(context, 0) *
                                              0.015),
                                      Text(
                                        'Change Password',
                                        style: TextStyle(
                                          fontSize:
                                              widthNHeight0(context, 1) * 0.038,
                                          fontFamily: 'Kadwa',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: widthNHeight0(context, 1) * 0.04,
                                    color: Color(0xff263238),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.05,
                          ),
                         
                        
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.04,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: const Color(0xffF0F2F5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(widthNHeight0(context, 1) * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prepare to move with Batic',
                            style: TextStyle(
                              color: Color(0xff263238),
                              fontSize: widthNHeight0(context, 1) * 0.044,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kadwa',
                            ),
                          ),
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.04,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SellHomeScreen(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 17),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.sell,
                                          color: Color(0xff263238)),
                                      SizedBox(
                                          width: widthNHeight0(context, 0) *
                                              0.015),
                                      Text(
                                        'Sell my home',
                                        style: TextStyle(
                                          fontSize:
                                              widthNHeight0(context, 1) * 0.038,
                                          fontFamily: 'Kadwa',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: widthNHeight0(context, 1) * 0.04,
                                    color: Color(0xff263238),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.05,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const RentScreen(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 17),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.shopping_bag,
                                          color: Color(0xff263238)),
                                      SizedBox(
                                          width: widthNHeight0(context, 0) *
                                              0.015),
                                      Text(
                                        'List my home for rent',
                                        style: TextStyle(
                                          fontSize:
                                              widthNHeight0(context, 1) * 0.038,
                                          fontFamily: 'Kadwa',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: widthNHeight0(context, 1) * 0.04,
                                    color: Color(0xff263238),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.05,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.04,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: const Color(0xffF0F2F5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(widthNHeight0(context, 1) * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'LEGAL',
                            style: TextStyle(
                              color: Color(0xff263238),
                              fontSize: widthNHeight0(context, 1) * 0.044,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kadwa',
                            ),
                          ),
                         
                          SizedBox(
                            height: widthNHeight0(context, 1) * 0.05,
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) =>
                              //         const PersdonalDetilsScreen(),
                              //   ),
                              // );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 17),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.info,
                                          color: Color(0xff263238)),
                                      SizedBox(
                                          width: widthNHeight0(context, 0) *
                                              0.015),
                                      Text(
                                        'Terms of use',
                                        style: TextStyle(
                                          fontSize:
                                              widthNHeight0(context, 1) * 0.038,
                                          fontFamily: 'Kadwa',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: widthNHeight0(context, 1) * 0.04,
                                    color: Color(0xff263238),
                                  ),
                                ],
                              ),
                            ),
                          ),
                           SizedBox(
                            height: widthNHeight0(context, 1) * 0.05,
                          ),
                         InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) =>
                              //         const PersdonalDetilsScreen(),
                              //   ),
                              // );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 17),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.people,
                                          color: Color(0xff263238)),
                                      SizedBox(
                                          width: widthNHeight0(context, 0) *
                                              0.015),
                                      Text(
                                        'About us',
                                        style: TextStyle(
                                          fontSize:
                                              widthNHeight0(context, 1) * 0.038,
                                          fontFamily: 'Kadwa',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: widthNHeight0(context, 1) * 0.04,
                                    color: Color(0xff263238),
                                  ),
                                ],
                              ),
                            ),
                          ),
                            SizedBox(
                            height: widthNHeight0(context, 1) * 0.05,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("sign out");
                      FirebaseAuth.instance.signOut();
                       Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const SingUpScreen(),
                                ),
                              );
                      
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        color: const Color(0xffF0F2F5),
                      ),
                      child: Container(
                        height: 60,
                        padding:
                            EdgeInsets.all(widthNHeight0(context, 1) * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.login_outlined,
                              size: widthNHeight0(context, 1) * 0.045,
                              color: Color(0xff263238),
                            ),
                            SizedBox(width: widthNHeight0(context, 0) * 0.02),
                            Text(
                              'Sign out',
                              style: TextStyle(
                                fontSize: widthNHeight0(context, 1) * 0.038,
                                color: Color(0xff263238),
                                fontFamily: 'Kadwa',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.1,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
