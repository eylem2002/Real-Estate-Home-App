// ignore_for_file: file_names, unused_element, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/filters_screen.dart';
import 'package:new_batic/view/screen/search_bar_screen.dart';
import 'package:new_batic/view/screen/signin.dart';
import 'package:new_batic/view/widget/compoents/container_RB.dart';

class Search_Page extends StatefulWidget {
  const Search_Page({super.key});

  @override
  State<Search_Page> createState() => _Home_pageState();
}

final TextEditingController _controller = TextEditingController();

class _Home_pageState extends State<Search_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: widthNHeight0(context, 0) * .44,
                width: widthNHeight0(context, 0) * .6,
                child: Image.asset(
                    fit: BoxFit.cover, 'assets/images/png_pic/baticc.png'),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: widthNHeight0(context, 0) * 0.36,
                        left: widthNHeight0(context, 0) * 0.03,
                        right: widthNHeight0(context, 0) * 0.03),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the search page here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchBarScreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: widthNHeight0(context, 1) * 0.85,
                          height: widthNHeight0(context, 0) * 0.066,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0F2F6),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10.0),
                          child: const Row(
                            children: [
                              Icon(Icons.search),
                              SizedBox(width: 10.0),
                              Text(
                                'Search Area / location',
                                style: TextStyle(
                                    fontFamily: 'Kadwa',
                                    color: Color(0xff9FA4A7)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ), //here is the end of top part
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FiltersScreen(), //here change to filter page name
                        ),
                      );
                    },

                    child: const ContainerRB(
                        pic: "assets/images/svg_pic/buy.svg",
                        headText: "Buy"), //assets/images/png_pic/baticc.png
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FiltersScreen(), ////here change to filter page name
                        ),
                      );
                    },
                    child: const ContainerRB(
                        pic: "assets/images/svg_pic/rent.svg",
                        headText:
                            "Rent"), //assets/images/svg_pic/rent_pic.svg/
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
