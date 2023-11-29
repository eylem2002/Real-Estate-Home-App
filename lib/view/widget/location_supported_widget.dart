import 'package:flutter/material.dart';

import '../screen/signin.dart';

class LocationSupportedWidget extends StatelessWidget {
  const LocationSupportedWidget({
    super.key,
    required this.region,
  });

  final String region;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: widthNHeight0(context, 1) * 0.05),
      width: widthNHeight0(context, 1) * 0.22,
      height: widthNHeight0(context, 0) * 0.04,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(35), right: Radius.circular(35))),
      child: Text(
        region,
        style: const TextStyle(fontFamily: 'Kadwa'),
      ),
    );
  }
}
