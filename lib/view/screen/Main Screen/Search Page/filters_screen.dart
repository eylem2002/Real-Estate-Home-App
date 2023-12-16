import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/Main%20Screen/Search%20Page/Search_home_folder/Search_main.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signin.dart';
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
  FilterController filterController = FilterController();
  String selectedGovernorates = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters', style: TextStyle(fontFamily: 'Kadwa')),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.close, size: widthNHeight0(context, 1) * 0.08),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
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
          
          
          'Buy',
          textAlign: TextAlign.center ,
          style: TextStyle(
            fontSize: 20,
            fontFamily: ("Kadwa"),
            color: Colors.black,
            fontWeight: FontWeight.w700
          ),
       
      ),

  
)
,
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: widthNHeight0(context, 1) * 0.4,
                child: Text(
                  'Search Area',
                  style: TextStyle(
                      fontFamily: 'Kadwa',
                      fontWeight: FontWeight.bold,
                      fontSize: widthNHeight0(context, 1) * 0.05),
                ),
              ),
              const SizedBox(),
                // Container(
                //      width: widthNHeight0(context, 1) * 0.4,
                //     height: widthNHeight0(context, 0)*0.05,
                //     decoration: BoxDecoration(
                //         border: Border.all(color: Color(0xff6482C4)),
                //         borderRadius: BorderRadius.circular(5)
                //     ),
                //     child: Padding(
                //       padding: const EdgeInsets.only(left: 15.0),
                //       child: DropdownButton<String>(
                //         style:const TextStyle(
                //           fontSize: 20,
                //           color: Colors.black,
                //           fontWeight: FontWeight.w500,
                //           fontFamily: 'Kadwa',
                //         ),
                //         isExpanded: true,
                //         iconSize: 30,
                //         value: selectedGovernorates,
                //         onChanged: (String? newValue) {
                //           setState(() {
                //             selectedGovernorates = newValue!;
                //           });
                //         },
                //         items: <String>['Any', 'Amman', 'Irbid','Zarqa','Balqa','Mafraq','Jerash','Ajloun','Karak','Tafilah','Ma\'an','Aqaba','Madaba']
                //             .map<DropdownMenuItem<String>>((String value) {
                //           return DropdownMenuItem<String>(
                //             value: value,
                //             child: Text(value),
                //           );
                //         }).toList(),
                //       ),
                //     ),
                //   ),
              
              const SearchAreaWidget(
                text: 'Any',
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: widthNHeight0(context, 1) * 0.4,
                child: Text(
                  'Bedrooms',
                  style: TextStyle(
                      fontFamily: 'Kadwa',
                      fontWeight: FontWeight.bold,
                      fontSize: widthNHeight0(context, 1) * 0.05),
                ),
              ),
              const SizedBox(),
              const SearchAreaWidget(
                text: 'Any',
              ),
            ],
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
            values: RangeValues(filterController.currentSliderValueMin, filterController.currentSliderValueMax),
            min: 50,
            max: 300000,
            divisions: 6000,
            onChanged: (RangeValues values) {
              setState(() {
                filterController.currentSliderValueMin = values.start;
                filterController.currentSliderValueMax = values.end;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SearchAreaWidget(
                    text: '${filterController.currentSliderValueMin.round().toString()}\$',
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
                style:
                    TextStyle(fontFamily: 'Kadwa', fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  SearchAreaWidget(
                    text: '${filterController.currentSliderValueMax.round().toString()}\$',
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
            height:  widthNHeight0(context, 0) * 0.07,
            child: ListView.builder(
              padding:
                  EdgeInsets.only(left: widthNHeight0(context, 1) * (0.13 / 2)),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: filterController.building.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SearchAreaWidget(
                  
                      text: filterController.building[index],
                      iconData: Icons.abc,
                    ),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                );
              },
            ),
          ),
          const Divider(),
          SizedBox(
            width: widthNHeight0(context, 1) * 0.87,
            child: Text(
              'Propert Type',
              style: TextStyle(
                  fontFamily: 'Kadwa',
                  fontWeight: FontWeight.bold,
                  fontSize: widthNHeight0(context, 1) * 0.05),
            ),
          ),
          SizedBox(height:  widthNHeight0(context, 0) * 0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(filterController.propert.length, (index) {
              return Row(
                children: [
                  PropertWidget(
                      text: filterController.propert[index].text, path: filterController.propert[index].path),
                  if (index != filterController.propert.length - 1) ...[
                    SizedBox(
                      width: widthNHeight0(context, 1) * 0.1,
                    )
                  ]
                ],
              );
            }),
          ),
          SizedBox(
            height: widthNHeight0(context, 0) * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              defaultButton(
                text: 'Back',
                width: widthNHeight0(context, 1) * 0.3,
                borderRadius: 5,
                background: Colors.white,
                textColor: Colors.black, onPressed: () {  }, borderWidth: 0,
                
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
                    )), onPressed: () {  }, borderWidth: 0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
