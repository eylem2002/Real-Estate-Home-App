import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void makePhoneCall(BuildContext context, String num) async {
  final String phoneNumber = 'tel:$num';

  // ignore: deprecated_member_use
  if (await canLaunch(phoneNumber)) {
    // ignore: deprecated_member_use
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
