import 'package:flutter/material.dart';
import 'package:new_batic/core/services/MapScreen.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button2.dart';

class EnterServices extends StatefulWidget {
  const EnterServices({Key? key, required this.lon, required this.lat}) : super(key: key);
  final double lon, lat;

  @override
  State<EnterServices> createState() => _EnterServicesState();
}

class _EnterServicesState extends State<EnterServices> {
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
        title: const Text(
          'Services',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Kadwa',
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(height: 1, color: Colors.grey[300]),
          Column(
            children: [
              SizedBox(height: widthNHeight0(context, 0) * 0.04,),
              defaultButton2(
                text: 'Markets',
                width: widthNHeight0(context, 1) * 0.9,
                borderRadius: 5,
                onPressed: () {
                  _navigateToMapScreen("supermarket");
                },
                borderWidth: 0,
              ),
              SizedBox(height: widthNHeight0(context, 0) * 0.04,),
              defaultButton(
                text: 'Schools',
                width: widthNHeight0(context, 1) * 0.9,
                borderRadius: 5,
                onPressed: () {
                  _navigateToMapScreen("school");
                },
                borderWidth: 0,
              ),
              SizedBox(height: widthNHeight0(context, 0) * 0.04,),
              defaultButton2(
                text: 'Hospitals',
                width: widthNHeight0(context, 1) * 0.9,
                borderRadius: 5,
                onPressed: () {
                  _navigateToMapScreen("hospital");
                },
                borderWidth: 0,
              ),
              SizedBox(height: widthNHeight0(context, 0) * 0.04,),
              defaultButton(
                text: 'Mosques',
                width: widthNHeight0(context, 1) * 0.9,
                borderRadius: 5,
                onPressed: () {
                  _navigateToMapScreen("mosque");
                },
                borderWidth: 0,
              ),
              SizedBox(height: widthNHeight0(context, 0) * 0.04,),
              defaultButton2(
                text: 'park',
                width: widthNHeight0(context, 1) * 0.9,
                borderRadius: 5,
                onPressed: () {
                  _navigateToMapScreen("park");
                },
                borderWidth: 0,
              ),
              SizedBox(height: widthNHeight0(context, 0) * 0.04,),
              defaultButton(
                text: 'Bus',
                width: widthNHeight0(context, 1) * 0.9,
                borderRadius: 5,
                onPressed: () {
                  _navigateToMapScreen("bus");
                },
                borderWidth: 0,
              ),
              SizedBox(height: widthNHeight0(context, 0) * 0.04,),
            ],
          ),
        ],
      ),
    );
  }

  void _navigateToMapScreen(String servicesName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MapScreen( servicesName: servicesName,lon: widget.lon, lat: widget.lat),
      ),
    );
  }
}

double widthNHeight0(BuildContext context, int number) {
  if (number == 0) {
    return MediaQuery.of(context).size.height;
  } else {
    return MediaQuery.of(context).size.width;
  }
}
