import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screen/Sign in/up/signin.dart';

class PropertWidget extends StatelessWidget {
  const PropertWidget({
    super.key,
    required this.path,
    required this.text,
  });

  final String path;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: widthNHeight0(context, 0)*0.01),
          height: widthNHeight0(context, 0) * 0.2,
          width: widthNHeight0(context, 1) * 0.4,
          decoration: BoxDecoration(
              color: Color(0xffF0F2F6),
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'Kadwa',
                      fontWeight: FontWeight.bold,
                      fontSize: widthNHeight0(context, 1) * 0.05),
                ),
              ),
              Expanded(
                flex: 3,
                  child: SvgPicture.asset(path)),
            ],
          ),
        ),
      ],
    );
  }
}
