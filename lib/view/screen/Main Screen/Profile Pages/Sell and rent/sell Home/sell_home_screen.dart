// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:new_batic/core/class/sharedData.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';

class SellHomeScreen extends StatefulWidget {
  const SellHomeScreen({super.key});

  @override
  State<SellHomeScreen> createState() => _SellHomeScreenState();
}

class _SellHomeScreenState extends State<SellHomeScreen> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;

  List<String> selectedReasons = [];

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
          child: Text('Sell My Home',
              style: TextStyle(
                fontSize: widthNHeight0(context, 1) * 0.058,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Center(
            child: Container(
              width: widthNHeight0(context, 1) * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(height: 1, color: Colors.grey[300]),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: const Text(
                      'Why are you selling your home?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                  ),
                  Container(
                    width: widthNHeight0(context, 1) * 0.88,
                    child: const Text(
                      'We\'ll tailor our service based on your needs. Select all that apply.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff6482C4)),
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          activeColor: Color(0xff6482C4),
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                              updateSelectedReasons('Upgrading my home');
                            });
                          },
                        ),
                        const Text(
                          'Upgrading my home',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: 'Kadwa',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff6482C4)),
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked2,
                          activeColor: Color(0xff6482C4),
                          onChanged: (value) {
                            setState(() {
                              isChecked2 = value!;
                              updateSelectedReasons('Selling Secondary home');
                            });
                          },
                        ),
                        const Text(
                          'Selling Secondary home',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: 'Kadwa',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff6482C4)),
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked3,
                          activeColor: Color(0xff6482C4),
                          onChanged: (value) {
                            setState(() {
                              isChecked3 = value!;
                              updateSelectedReasons('Relocating');
                            });
                          },
                        ),
                        const Text(
                          'Relocating',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: 'Kadwa',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff6482C4)),
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked4,
                          activeColor: Color(0xff6482C4),
                          onChanged: (value) {
                            setState(() {
                              isChecked4 = value!;
                              updateSelectedReasons('Downsizing my home');
                            });
                          },
                        ),
                        const Text(
                          'Downsizing my home',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: 'Kadwa',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff6482C4)),
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked5,
                          activeColor: Color(0xff6482C4),
                          onChanged: (value) {
                            setState(() {
                              isChecked5 = value!;
                              updateSelectedReasons('Other');
                            });
                          },
                        ),
                        const Text(
                          'Other',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: 'Kadwa',
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                    height: widthNHeight0(context, 1)*0.06,
                  ),
                  defaultButton(
                    text: 'Next',
                    onPressed: () {
        
        
                    if(selectedReasons.isNotEmpty){

          Navigator.of(context).pushReplacementNamed("complete_page");
        
        
        
        shared_data.add({'sellingReasons': selectedReasons});
        print(shared_data[0]['sellingReasons']);
                    }
                    else {

                     ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Center(
      child: Text('Choose one',style: TextStyle(fontWeight: FontWeight.bold),),
    ),
    backgroundColor: Colors.red,
  ),
);

                    }
        
        
                      
                          
                    },
                    borderWidth: 10,
                    height: 45,
                    borderRadius: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void updateSelectedReasons(String reason) {
    reason ??= "Other";
    if (selectedReasons.contains(reason)) {
      selectedReasons.remove(reason);
    } else {
      selectedReasons.add(reason);
    }
  }
}
