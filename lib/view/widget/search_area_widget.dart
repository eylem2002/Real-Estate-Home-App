import 'package:flutter/material.dart';
import 'package:new_batic/core/services/EnterSevices.dart';



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
              color:Color(0xffF0F2F6),
          ),
          child:  Row(
            mainAxisAlignment: (iconData == Icons.keyboard_arrow_down_rounded)?MainAxisAlignment.end:MainAxisAlignment.center,
            children: [
               Text(text,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Kadwa')),
              SizedBox(width: widthNHeight0(context, 1)*0.02,),
              if(iconData == Icons.keyboard_arrow_down_rounded)...[
                Icon(iconData),

              ]
            ],
          ),
        )
      ],
    );
  }
}
