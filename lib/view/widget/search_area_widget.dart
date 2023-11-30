
import 'package:flutter/material.dart';

import '../screen/signin.dart';

class SearchAreaWidget extends StatelessWidget {
  const SearchAreaWidget({
    super.key, required this.text,this.iconData = Icons.keyboard_arrow_down_rounded
  });
  final String text;
  final IconData iconData ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: widthNHeight0(context, 1)*0.25,
          height: widthNHeight0(context, 0)*0.05,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.withOpacity(0.2)
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
               Text(text,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Kadwa')),
              SizedBox(width: widthNHeight0(context, 1)*0.02,),
              Icon((iconData == Icons.keyboard_arrow_down_rounded)? iconData:null),
            ],
          ),
        )
      ],
    );
  }
}
