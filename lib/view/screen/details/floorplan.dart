import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/core/services/EnterSevices.dart';


class FloorPlan extends StatefulWidget {
  final Product product;

  const FloorPlan({Key? key, required this.product}) : super(key: key);

  @override
  State<FloorPlan> createState() => _FloorPlanState();
}

class _FloorPlanState extends State<FloorPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Batic"),
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
      ),
      body:
        ListView(
          children: [
            Divider(height: 3,color: Colors.grey[300],),
         Padding(
        
        padding:  EdgeInsets.all(widthNHeight0(context, 1)*0.06),
           child: Column(
             children: [
               Image.asset(widget.product.images2[0], fit: BoxFit.fill),
               SizedBox(height: widthNHeight0(context, 1)*0.09,),
                  Image.asset(widget.product.images2[1], fit: BoxFit.fill),
             ],
           ),
         ),
            // Add more images if needed
          ],
        ),
    
    );
  }
}
