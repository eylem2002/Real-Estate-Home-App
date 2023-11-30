import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_batic/view/screen/signin.dart';

import '../widget/compoents/deff_button.dart';
import '../widget/search_area_widget.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

  double _currentSliderValueMin = 60000;
  double _currentSliderValueMax = 250000;
  List<String> building = [
    'Any',
    'New',
    '5+',
    '10+'
  ];

  @override
  Widget build(BuildContext context) {
    print(widthNHeight0(context, 1)*0.87-widthNHeight0(context, 1));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters', style: TextStyle(fontFamily: 'Kadwa')),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: EdgeInsets.all(widthNHeight0(context, 1) * 0.05),
            child: Image.asset('assets/images/close.png'),
          ),
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          SizedBox(
            height: widthNHeight0(context, 0) * 0.01,
          ),
          defaultButton(
            background: Theme.of(context).scaffoldBackgroundColor,
              text: 'Buy',
              textColor: Colors.black,
              width: widthNHeight0(context, 1) * 0.9,
              borderColor: Colors.grey.withOpacity(0.3),
              borderWidth: 3,
              borderRadius: 10),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: widthNHeight0(context, 1)*0.4,
                child: Text(
                  'Search Area',
                  style: TextStyle(
                      fontFamily: 'Kadwa',
                      fontWeight: FontWeight.bold,
                      fontSize: widthNHeight0(context, 1) * 0.05),
                ),
              ),
              const SizedBox(),
              const SearchAreaWidget(text: 'Any',),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: widthNHeight0(context, 1)*0.4,
                child: Text(
                  'Bedrooms',
                  style: TextStyle(
                      fontFamily: 'Kadwa',
                      fontWeight: FontWeight.bold,
                      fontSize: widthNHeight0(context, 1) * 0.05),
                ),
              ),
              const SizedBox(),
              const SearchAreaWidget(text: 'Any',),
            ],
          ),
          const Divider(),
          SizedBox(
            width: widthNHeight0(context, 1)*0.87,
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
            values: RangeValues(_currentSliderValueMin, _currentSliderValueMax),
            min: 50,
            max: 300000,
            divisions: 6000,
            labels: RangeLabels(
              _currentSliderValueMin.round().toString(),
              _currentSliderValueMax.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentSliderValueMin = values.start;
                _currentSliderValueMax = values.end;
              });
            },
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SearchAreaWidget(text: '${_currentSliderValueMin.round().toString()}\$',iconData: Icons.abc,),
                  SizedBox(height: widthNHeight0(context, 0)*0.005,),
                  const Text('Minimum',style: TextStyle(fontFamily: 'Kadwa',fontWeight: FontWeight.bold),)
                ],
              ),
              const Text('To',style: TextStyle(fontFamily: 'Kadwa',fontWeight: FontWeight.bold),),
              Column(
                children: [
                  SearchAreaWidget(text: '${_currentSliderValueMax.round().toString()}\$',iconData: Icons.abc,),
                  SizedBox(height: widthNHeight0(context, 0)*0.005,),
                  const Text('Maximum',style: TextStyle(fontFamily: 'Kadwa',fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          ),
          const Divider(),
          SizedBox(
            width: widthNHeight0(context, 1)*0.87,
            child: Text(
              'Building Age',
              style: TextStyle(
                  fontFamily: 'Kadwa',
                  fontWeight: FontWeight.bold,
                  fontSize: widthNHeight0(context, 1) * 0.05),
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              padding: EdgeInsets.only(left: widthNHeight0(context, 1)*(0.13/2)),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: building.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SearchAreaWidget(text: building[index],iconData: Icons.abc,),
                    const SizedBox(width: 5,)
                  ],
                );
              },
            ),
          ),
          const Divider(),
          SizedBox(
            width: widthNHeight0(context, 1)*0.87,
            child: Text(
              'Propert Type',
              style: TextStyle(
                  fontFamily: 'Kadwa',
                  fontWeight: FontWeight.bold,
                  fontSize: widthNHeight0(context, 1) * 0.05),
            ),
          ),
          SizedBox(
            height: widthNHeight0(context, 0)*0.2,
            child: SvgPicture.asset(''),
          ),
          SizedBox(height: widthNHeight0(context, 0)*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              defaultButton(
                text: 'Rest',
                width: widthNHeight0(context, 1) * 0.3,
                borderRadius: 5,
                background: Colors.white,
                textColor: Colors.black,
              ),
              defaultButton(
                text: 'Done',
                background: const Color(0xff6482C4),
                width: widthNHeight0(context, 1) * 0.6,
                borderRadius: 5,
                function: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const FiltersScreen(),)),
              ),
            ],
          )

        ],
      ),
    );
  }
}
