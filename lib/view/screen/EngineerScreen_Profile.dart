// ignore_for_file: camel_case_types, unnecessary_string_interpolations, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EngineerScreen_Profile extends StatefulWidget {
  const EngineerScreen_Profile({super.key});

  @override
  State<EngineerScreen_Profile> createState() => _EngineerScreenState();
}

class _EngineerScreenState extends State<EngineerScreen_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Account',
              style: TextStyle(
                fontSize: 25,
                // height: 120,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello ${'Engineer'}',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kadwa',
                ),
              ),
              const Text(
                '${'@gmail.com'}',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                  color: Color(0xff263238),
                  fontFamily: 'Kadwa',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: const Color(0xffF0F2F5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'PROFILE',
                        style: TextStyle(
                          color: Color(0xff263238),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kadwa',
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const   Row(
                            children: [
                              Icon(Icons.person, color: Color(0xff263238)),
                              SizedBox(width: 10),
                              Text(
                                'Personal details',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Kadwa',
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon:const Icon(
                                 Icons.arrow_forward_ios,
                                size: 17,
                                color: Color(0xff263238),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.inbox_outlined,
                                  color: Color(0xff263238)),
                              SizedBox(width: 10),
                              Text(
                                'Change Email',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Kadwa',
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.lock_outline,
                                  color: Color(0xff263238)),
                              SizedBox(width: 10),
                              Text(
                                'Change Password',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff263238),
                                  fontFamily: 'Kadwa',
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                                color: Color(0xff263238),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.delete_outline,
                                  color: Color(0xff263238)),
                              SizedBox(width: 10),
                              Text(
                                'Delete Acoount',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff263238),
                                  fontFamily: 'Kadwa',
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                                color: Color(0xff263238),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         const Row(
                            children:  [
                              Icon(Icons.check_circle_outline,
                                  color: Color(0xff263238)),
                              SizedBox(width: 10),
                              Text(
                                'Requests',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff263238),
                                  fontFamily: 'Kadwa',
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                print("object");
                                
                                
                                },
                              icon: Icon(Icons.arrow_forward_ios,
                                  size: 17, color: Color(0xff263238)))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: const Color(0xffF0F2F5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Prepare to move with Batic',
                        style: TextStyle(
                          color: Color(0xff263238),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kadwa',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.sell_outlined,
                                  color: Color(0xff263238)),
                              SizedBox(width: 10),
                              Text(
                                'Sell my home',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff263238),
                                  fontFamily: 'Kadwa',
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                                color: Color(0xff263238),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.shopping_bag_outlined,
                                  color: Color(0xff263238)),
                              SizedBox(width: 10),
                              Text(
                                'List my home for rent',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff263238),
                                  fontFamily: 'Kadwa',
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                                color: Color(0xff263238),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: const Color(0xffF0F2F5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'LEGAL',
                        style: TextStyle(
                          color: Color(0xff263238),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kadwa',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.question_mark_outlined,
                                  color: Color(0xff263238)),
                              SizedBox(width: 10),
                              Text(
                                'Terms of use',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff263238),
                                  fontFamily: 'Kadwa',
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios,
                                  size: 17, color: Color(0xff263238)))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children:const  [
                              Icon(Icons.groups_outlined,
                                  color: Color(0xff263238)),
                              SizedBox(width: 10),
                              Text(
                                'About us',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff263238),
                                  fontFamily: 'Kadwa',
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                                color: Color(0xff263238),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               GestureDetector(
                  onTap: () {
                    print("sign out");
                  },
             child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: const Color(0xffF0F2F5),
                ),
                
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.all(13),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.logout,
                          size: 17,
                          color: Color(0xff263238),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Sign out',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff263238),
                            fontFamily: 'Kadwa',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
