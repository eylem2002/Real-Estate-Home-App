// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/core/services/EnterSevices.dart';


class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    this.width = 300,
    this.aspectRatio = 1.76,
    required this.product,
    required this.onPress,
    required this.onFavoriteChanged,
  }) : super(key: key);

  final double width, aspectRatio;
  final Product product;
  final VoidCallback onPress;
  final Function(bool isFavourite) onFavoriteChanged;

  @override
  // ignore: library_private_types_in_public_api
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffF0F2F6),
          ),
          padding: EdgeInsets.all(12),
          width: widthNHeight0(context, 1) * 0.9,
          child: GestureDetector(
            onTap: widget.onPress,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: widget.aspectRatio,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffCCD8F4).withOpacity(0.01),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Stack(
                          children: [
                     
                            Image.network(widget.product.images[0], fit: BoxFit.fill), // here is the error
                            
                            
                            Positioned(
                              top: widthNHeight0(context, 0) * 0.01,
                              left: widthNHeight0(context, 1) * 0.02,
                              height: widthNHeight0(context, 1)*0.085,
                              child: Container(
                                padding:  EdgeInsets.all( widthNHeight0(context, 1)*0.01,),
                                decoration: BoxDecoration(
                                  color: Color(0xffF0F2F6),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  "checked",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Kadwa",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                    
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "JOD ${widget.product.price}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Kadwa",
                            color: Color(0xFF263238),
                          ),
                        ),
                         SizedBox(height: widthNHeight0(context, 1)*0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Row(
                            
                              children: [
                                Icon(Icons.bed_outlined, size: widthNHeight0(context, 1) * 0.04),
                                 SizedBox(width: widthNHeight0(context, 0)*0.01),
                                Text(" ${widget.product.bed}", style: TextStyle(fontFamily: "kadwa", fontSize: widthNHeight0(context, 1) * 0.027)),
                              ],
                            ),
                           SizedBox(width: widthNHeight0(context, 0)*0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.bathtub_outlined, size: widthNHeight0(context, 1) * 0.04),
                                SizedBox(width: widthNHeight0(context, 0)*0.01),
                                Text( " ${widget.product.bath}", style: TextStyle(fontFamily: "kadwa", fontSize: widthNHeight0(context, 1) * 0.027)),
                              ],
                            ),
                             SizedBox(width: widthNHeight0(context, 0)*0.01),
                            Row(
                              children: [
                                Icon(Icons.square_outlined, size: widthNHeight0(context, 1) * 0.04),
                                SizedBox(width: widthNHeight0(context, 0)*0.01),
                                Text(" ${widget.product.square} sqft", style: TextStyle(fontFamily: "kadwa", fontSize: widthNHeight0(context, 1) * 0.027)),
                              ],
                            ),
                          ],
                        ),
                           SizedBox(height: widthNHeight0(context, 1)*0.028),
                        Text(
                          " ${widget.product.title}",
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Kadwa",
                            color: Color(0xFF263238),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: widthNHeight0(context, 1) * 0.12,
                            width: widthNHeight0(context, 0) * 0.043,
                            child: Icon(
                              Icons.screen_share_sharp,
                              size: widthNHeight0(context, 1) * 0.06,
                            ),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {
                            setState(() {
                              widget.product.toggleFavorite();
                              widget.onFavoriteChanged(widget.product.isFavourite);
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: widthNHeight0(context, 1) * 0.12,
                            width: widthNHeight0(context, 0) * 0.043,
                            decoration: BoxDecoration(
                              color: widget.product.isFavourite ? Color(0xffF0F2F6) : Color(0xffF0F2F6),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.favorite,
                              size: widthNHeight0(context, 1) * 0.06,
                              color: widget.product.isFavourite ? const Color(0xFFFF6584) : const Color(0xff263238),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            
        
              ],
            ),
          ),
        ),
      
      SizedBox(height: widthNHeight0(context, 1)*0.03,)
      ],
    );
   
  }
}
