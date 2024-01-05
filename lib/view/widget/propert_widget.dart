// Updated PropertModel class
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/model/propert_model.dart';



// Updated PropertWidget
class PropertWidget extends StatelessWidget {
  final PropertModel propertModel;
  final VoidCallback onTap;

  const PropertWidget({super.key, 
    required this.propertModel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: widthNHeight0(context, 0) * 0.2,
        width: widthNHeight0(context, 1) * 0.35,
        decoration: BoxDecoration(
          color: propertModel.isSelected ?Color.fromARGB(255, 229, 234, 247) : Color(0xffF0F2F6),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          children: [
            SizedBox(height: widthNHeight0(context, 1)*0.035,),
           Text(
                  propertModel.text,
                  style: TextStyle(
                    fontFamily: 'Kadwa',
                    fontWeight: FontWeight.bold,
                    fontSize: widthNHeight0(context, 1) * 0.04,),),
            Expanded(
              flex: 3,
           
              child: Center(
                child: SvgPicture.asset(
                  propertModel.imagePath,
             
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

