import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signin.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';

class CompleteSellHomeScreen extends StatefulWidget {
  const CompleteSellHomeScreen({super.key});

  @override
  State<CompleteSellHomeScreen> createState() => _CompleteSellHomeScreenState();
}

class _CompleteSellHomeScreenState extends State<CompleteSellHomeScreen> {
  String selectedValue = '';
  String Furnished = '';
  String selectedGovernorates = '';
  int BuildingAge = 1;
  int Bedrooms = 1;
  int Bathrooms=1;
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
                icon: Icon(Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text('Complete ',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Kadwa',
            )),
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
                    child: const Text('Let’s verify some home facts',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                  ),
                  Container(
                    width: widthNHeight0(context, 1) * 0.89,
                    child: const Text(
                      'This helps your agent prepare the most accurate home estimate.',
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
                  const Text('Propert Type',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widthNHeight0(context, 1)*0.9,
                    height: widthNHeight0(context, 1)*0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<String>(
                        style:const TextStyle(
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
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Search Area',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widthNHeight0(context, 1)*0.9,
                    height: widthNHeight0(context, 1)*0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<String>(
                        style:const TextStyle(
                          fontSize: 20,
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
                        items: <String>['', 'Amman', 'Irbid','Zarqa','Balqa','Mafraq','Jerash','Ajloun','Karak','Tafilah','Ma\'an','Aqaba','Madaba']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Building Age',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widthNHeight0(context, 1)*0.9,
                    height: widthNHeight0(context, 1)*0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<int>(
                        style:const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Kadwa',
                        ),
                        isExpanded: true,
                        value: BuildingAge ,
                        iconSize: 30,
                        onChanged: (int? newValue) {
                          setState(() {
                            BuildingAge = newValue!;
                          });
                        },
                        items:  List<DropdownMenuItem<int>>.generate(
                          50, // Change this number based on your range of numbers
                              (index) => DropdownMenuItem<int>(
                            value: index + 1,
                            child: Text((index + 1).toString()),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Bedrooms',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widthNHeight0(context, 1)*0.9,
                    height: widthNHeight0(context, 1)*0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<int>(
                        style:const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Kadwa',
                        ),
                        isExpanded: true,
                        value: Bedrooms ,
                        iconSize: 30,
                        onChanged: (int? newValue) {
                          setState(() {
                            Bedrooms = newValue!;
                          });
                        },
                        items:  List<DropdownMenuItem<int>>.generate(
                          10, // Change this number based on your range of numbers
                              (index) => DropdownMenuItem<int>(
                            value: index + 1,
                            child: Text((index + 1).toString()),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Bathrooms',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widthNHeight0(context, 1)*0.9,
                    height: widthNHeight0(context, 1)*0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<int>(
                        style:const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Kadwa',
                        ),
                        isExpanded: true,
                        value: Bathrooms ,
                        iconSize: 30,
                        onChanged: (int? newValue) {
                          setState(() {
                            Bathrooms = newValue!;
                          });
                        },
                        items:  List<DropdownMenuItem<int>>.generate(
                          10, // Change this number based on your range of numbers
                              (index) => DropdownMenuItem<int>(
                            value: index + 1,
                            child: Text((index + 1).toString()),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Furnished',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widthNHeight0(context, 1)*0.9,
                    height: widthNHeight0(context, 1)*0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<String>(
                        style:const TextStyle(
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
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: defaultButton(text: 'Next',
                      width: widthNHeight0(context, 1)*0.5,
                      onPressed: (){
        
                      },
                      borderWidth:10 ,
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