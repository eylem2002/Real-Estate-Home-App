import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/signin.dart';
import '../../controller/filter_controller.dart';
import '../widget/compoents/deff_button.dart';
import '../widget/propert_widget.dart';
import '../widget/search_area_widget.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  FilterController filterController = FilterController();

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
          defaultButton(
              background: Theme.of(context).scaffoldBackgroundColor,
              text: 'Buy',
              textColor: Colors.black,
              width: widthNHeight0(context, 1) * 0.9,
              borderColor: Colors.grey.withOpacity(0.3),
              borderWidth: 3,
              borderRadius: 10, onPressed: () {  }),
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
            height: 50,
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
                text: 'Rest',
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
                      builder: (context) => const FiltersScreen(),
                    )), onPressed: () {  }, borderWidth: 0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
