import 'package:flutter/material.dart';
import 'package:new_batic/core/class/type.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Main%20Screen/Search%20Page/Search_home_folder/Search_main.dart';
import 'package:new_batic/view/widget/BottomNavBar.dart';
import '../../../widget/compoents/bottoms/deff_button.dart';


class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({super.key});

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  final TextEditingController _controller = TextEditingController();

  String selectedGovernorates = '';

  @override
  Widget build(BuildContext context) {
       ttype = "Any";
                      bednumber = 0;
                      price_start = 0;
                      price_end = 0;
                      Age = "Any";
                      Furnfished = "Any";

    return Scaffold(
      
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: widthNHeight0(context, 1) * 0.1,
                      left: widthNHeight0(context, 1) * 0.035,
                      right: widthNHeight0(context, 1) * 0.035,
                      bottom: widthNHeight0(context, 1) * 0.027),
                  child: Container(
                    width: widthNHeight0(context, 1) * 0.9,
                    height: widthNHeight0(context, 1) * 0.119,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6482C4)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButton<String>(
                        style: TextStyle(
                          fontSize: widthNHeight0(context, 1) * 0.043,
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
                          '',
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
                          'Ma\'an',
                          'Aqaba',
                          'Madaba'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value.isNotEmpty ? value : 'Search for Area',
                              style: TextStyle(
                                  fontSize: widthNHeight0(context, 1) * 0.045),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                const Divider(),
                SizedBox(
                    width: widthNHeight0(context, 1),
                    height: widthNHeight0(context, 0) * 0.4,
                    child: Image(
                      image: AssetImage("assets/images/png_pic/batic_text.png"),
                    )) //batic_text.png
                ,
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(bottom: widthNHeight0(context, 0) * 0.03),
              child: Row(
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
                        ),
                      );
                    },
                    borderWidth: 0,
                  ),
                  defaultButton(
                    text: 'Next',
                    width: widthNHeight0(context, 1) * 0.6,
                    borderRadius: 5,
                    onPressed: () {
                      
                      Navigator.push(
                        
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Search_Main(),
                        ),
                      );
                    },
                    borderWidth: 0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
