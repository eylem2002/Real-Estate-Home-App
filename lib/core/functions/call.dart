import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:url_launcher/url_launcher.dart';

void makePhoneCall(BuildContext context, String num) async {
  final String  phoneNumber = num;

  if (await canLaunch(phoneNumber)) {
    await launch(phoneNumber);
  } else {
    // Handle error, e.g., show an alert
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text('Could not launch the phone call.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
