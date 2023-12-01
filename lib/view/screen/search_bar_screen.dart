import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_batic/view/screen/signin.dart';

import '../widget/compoents/defaultFormField.dart';
import '../widget/compoents/deff_button.dart';
import '../widget/location_supported_widget.dart';
import 'filters_screen.dart';

class SearchBarScreen extends StatelessWidget {
  SearchBarScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.close,size: widthNHeight0(context, 1)*0.08,)),
        title: TextFormFieldWidget(
          passToggle: false,
          passController: _controller,
          labelText: '',
          validator: (value) {
            if (value!.isEmpty) {
              return "Search Area / location ";
            } else {
              return null;
            }
          },
          str: "Search Area / location",
          width: widthNHeight0(context, 1) * 0.75,
          height: widthNHeight0(context, 0) * 0.07,
          iconSufData: Icons.search,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                Padding(
                  padding: EdgeInsets.only(
                      top: widthNHeight0(context, 0) * 0.005,
                      left: widthNHeight0(context, 1) * 0.05),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {

                        },
                        child: SizedBox(
                          width: widthNHeight0(context, 1) * 0.06,
                          height: widthNHeight0(context, 0)*0.03,
                          child: SvgPicture.asset('assets/images/svg_pic/undraw_coming_home_re_ausc 2.svg'),
                        ),
                      ),
                      SizedBox(
                        width: widthNHeight0(context, 1) * 0.03,
                      ),
                      const Text(
                        'Recently Searched Location',
                        style: TextStyle(
                            color: Color(0xff263238),
                            fontFamily: 'Kadwa',
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: widthNHeight0(context, 0) * 0.04,
                ),
                const LocationSupportedWidget(
                  region: 'Amman',
                ),
                SizedBox(
                  height: widthNHeight0(context, 0) * 0.01,
                ),
                const Divider(),
                Padding(
                  padding:
                      EdgeInsets.only(left: widthNHeight0(context, 1) * 0.05),
                  child: const Text(
                    'Location Supported',
                    style: TextStyle(
                        color: Color(0xff263238),
                        fontFamily: 'Kadwa',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: widthNHeight0(context, 0) * 0.04,
                ),
                Row(
                  children: List.generate(3, (index) {
                    return const LocationSupportedWidget(
                      region: 'Amman',
                    );
                  }),
                )
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(bottom: widthNHeight0(context, 0) * 0.03),
              child: Row(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
