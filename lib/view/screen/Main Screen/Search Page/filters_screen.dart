// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:new_batic/core/class/type.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Search%20Page/Search_home_folder/Search_main.dart';

import 'package:new_batic/view/widget/BottomNavBar.dart';
import '../../../../controller/filter_controller.dart';
import '../../../widget/compoents/bottoms/deff_button.dart';
import '../../../widget/propert_widget.dart';
import '../../../widget/search_area_widget.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
    
  int selectedIndex = 0;
  FilterController filterController = FilterController();

  String? selectedGovernorates;
  int Bedrooms = 1;
  
  @override
  Widget build(BuildContext context) {
     
                    //   bednumber = 0;
                    //   price_start = 50;
                    //   price_end = 50;
                    //   Age = "Any";
                    //  // Furnfished = "Any";
                    //   Area="Any";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters', style: TextStyle(fontFamily: 'Kadwa')),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.close, size: widthNHeight0(context, 1) * 0.08),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            SizedBox(
              height: widthNHeight0(context, 0) * 0.01,
            ),
            Container(
              width: widthNHeight0(context, 1) * 0.9,
              height: widthNHeight0(context, 0) * 0.06,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                border: Border.all(
                  color: Color(0xffF0F2F6),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '$ttype',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: ("Kadwa"),
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const Divider(),
            Padding(
              padding: EdgeInsets.only(
                  left: widthNHeight0(context, 1) * 0.02,
                  right: widthNHeight0(context, 1) * 0.02),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: widthNHeight0(context, 1) * 0.02),
                        child: SizedBox(
                          child: Text(
                            'Search Area',
                            style: TextStyle(
                                fontFamily: 'Kadwa',
                                fontWeight: FontWeight.bold,
                                fontSize: widthNHeight0(context, 1) * 0.05),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: widthNHeight0(context, 0) * 0.055,
                      ),
                      Container(
                        width: widthNHeight0(context, 1) * 0.4,
                        height: widthNHeight0(context, 0) * 0.05,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffF0F2F6)),
                          color: Color(0xffF0F2F6),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: DropdownButton<String>(
                            style: const TextStyle(
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
                                Area = newValue;
                              });
                            },
                            items: <String>[
                              'Any',
                              'Amman',
                              'Irbid',
                              'Zarqa',
                              'Balqa',
                              'Mafraq',
                              'Jerash',
                              'Ajloun',
                              'Karak',
                              'Tafilah',
                              'Aqaba',
                              'Madaba'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: widthNHeight0(context, 1) * 0.018),
                        child: SizedBox(
                          width: widthNHeight0(context, 1) * 0.4,
                          child: Text(
                            'Bedrooms',
                            style: TextStyle(
                                fontFamily: 'Kadwa',
                                fontWeight: FontWeight.bold,
                                fontSize: widthNHeight0(context, 1) * 0.05),
                          ),
                        ),
                      ),
                      const SizedBox(),
                      // const SearchAreaWidget(
                      //   text: 'Any',
                      // ),
                      Container(
                        width: widthNHeight0(context, 1) * 0.4,
                        height: widthNHeight0(context, 1) * 0.119,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffF0F2F6)),
                            color: Color(0xffF0F2F6),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: DropdownButton<int>(
                            style: TextStyle(
                              fontSize: widthNHeight0(context, 1) * 0.043,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Kadwa',
                            ),
                            isExpanded: true,
                            value: Bedrooms,
                            iconSize: 30,
                            onChanged: (int? newValue) {
                              setState(() {
                                Bedrooms = newValue!;
                                bednumber = newValue;
                              });
                            },
                            items: List<DropdownMenuItem<int>>.generate(
                              10, 
                              (index) => DropdownMenuItem<int>(
                                value: index + 1,
                                child: Text((index ).toString()),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              width: widthNHeight0(context, 1) * 0.87,
              child: Text(
                'Price',
                style: TextStyle(
                    fontFamily: 'Kadwa',
                    fontWeight: FontWeight.bold,
                    fontSize: widthNHeight0(context, 1) * 0.05),
              ),
            ),
            RangeSlider(
              inactiveColor: Colors.black.withOpacity(0.5),
              activeColor: const Color(0xffCCD8F4),
              values: RangeValues(filterController.currentSliderValueMin,
                  filterController.currentSliderValueMax),
              min: 50,
              max: 300000,
              divisions: 6000,
              onChanged: (RangeValues values) {
                setState(() {
                  filterController.currentSliderValueMin = values.start;
                  filterController.currentSliderValueMax = values.end;
                  price_start = values.start;
                  price_end = values.end;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SearchAreaWidget(
                      text:
                          '${filterController.currentSliderValueMin.round().toString()}\$',
                      iconData: Icons.abc,
                    ),
                    SizedBox(
                      height: widthNHeight0(context, 0) * 0.005,
                    ),
                    const Text(
                      'Minimum',
                      style: TextStyle(
                          fontFamily: 'Kadwa', fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Text(
                  'To',
                  style: TextStyle(
                      fontFamily: 'Kadwa', fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    SearchAreaWidget(
                      text:
                          '${filterController.currentSliderValueMax.round().toString()}\$',
                      iconData: Icons.abc,
                    ),
                    SizedBox(
                      height: widthNHeight0(context, 0) * 0.005,
                    ),
                    const Text(
                      'Maximum',
                      style: TextStyle(
                          fontFamily: 'Kadwa', fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            const Divider(),
            SizedBox(
              width: widthNHeight0(context, 1) * 0.87,
              child: Text(
                'Building Age',
                style: TextStyle(
                    fontFamily: 'Kadwa',
                    fontWeight: FontWeight.bold,
                    fontSize: widthNHeight0(context, 1) * 0.05),
              ),
            ),
            SizedBox(
              height: widthNHeight0(context, 0) * 0.01,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildItem("Any", 0),
                  SizedBox(width: widthNHeight0(context, 1) * 0.02),
                  buildItem("New", 1),
                  SizedBox(width: widthNHeight0(context, 1) * 0.02),
                  buildItem("5+", 2),
                  SizedBox(width: widthNHeight0(context, 1) * 0.02),
                  buildItem("10+", 3),
                ],
              ),
            ),
           
            const Divider(),
            SizedBox(
              width: widthNHeight0(context, 1) * 0.87,
              child: Text(
                'Furnished',
                style: TextStyle(
                    fontFamily: 'Kadwa',
                    fontWeight: FontWeight.bold,
                    fontSize: widthNHeight0(context, 1) * 0.05),
              ),
            ),
            SizedBox(height: widthNHeight0(context, 0) * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(filterController.propert.length, (index) {
                return PropertWidget(
                  propertModel: filterController.propert[index],
                  onTap: () {
                    setState(() {
                      filterController.toggleSelection(index);
                      if(index==0){
                        Furnfished="Not";

                      }
                      else   {Furnfished="Fully";}
                    });
                  },
                );
              }),
            ),

            SizedBox(
              height: widthNHeight0(context, 0) * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                defaultButton(
                  text: 'Back',
                  width: widthNHeight0(context, 1) * 0.3,
                  borderRadius: 5,
                  background: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomeBottomNavBar(),
                        ));
                  },
                  borderWidth: 0,
                ),
                defaultButton(
                  text: 'Done',
                  background: const Color(0xff6482C4),
                  width: widthNHeight0(context, 1) * 0.6,
                  borderRadius: 5,
                  function: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Search_Main(),
                      )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Search_Main(),
                        ));
                  },
                  borderWidth: 0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildItem(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          if (index == 0) {
            Age = "Any";
          } else if (index == 1) {
            Age = "New";
          } else if (index == 2) {
            Age = "5+";
          } else if (index == 3) {
            Age = "10+";
          }
        });
      },
      child: Container(
        height: widthNHeight0(context, 0) * 0.055,
        width: widthNHeight0(context, 1) * 0.25,
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? Color.fromARGB(255, 229, 234, 247)
              : Color(0xffF0F2F6),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'Kadwa',
                      fontWeight: FontWeight.bold,
                      fontSize: widthNHeight0(context, 1) * 0.04,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
