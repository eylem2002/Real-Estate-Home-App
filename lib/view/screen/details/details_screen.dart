// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/core/functions/call.dart';
import 'package:new_batic/core/services/MapScreen%202.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/details/floorplan.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button%203.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button%204.dart';
   
   


class DetailsScreen extends StatefulWidget {
 
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;
 

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  int selectedImage = 0;

  Key? get key => null;


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
      body: ListView(
        children: [
          Divider(height: 1, color: Colors.grey[300]),
          Container(
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    onPageChanged: (index, reason) {
                      setState(() {
                        selectedImage = index;
                      });
                    },
                  ),
                  items: widget.product.images.map((image) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                          color: Color(0xFFF0F2F6),
                          ),
                          child: Image.network(image, fit: BoxFit.fill),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Color(0xffF0F2F6),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(
                                  widthNHeight0(context, 1) * 0.04),
                              child: Column(
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
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                              Icons
                                                  .bed_outlined,
                                              size: widthNHeight0(context, 1) *
                                                  0.04),
                                          SizedBox(
                                              width: widthNHeight0(context, 0) *
                                                  0.01),
                                          Text(" ${widget.product.bed}",
                                              style: TextStyle(
                                                  fontFamily: "kadwa",
                                                  fontSize: widthNHeight0(
                                                          context, 1) *
                                                      0.027)),
                                        ],
                                      ),
                                      SizedBox(
                                          width:
                                              widthNHeight0(context, 0) * 0.01),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.bathtub_outlined,
                                              size: widthNHeight0(context, 1) *
                                                  0.04),
                                          SizedBox(
                                              width: widthNHeight0(context, 0) *
                                                  0.01),
                                          Text(" ${widget.product.bath}",
                                              style: TextStyle(
                                                  fontFamily: "kadwa",
                                                  fontSize: widthNHeight0(
                                                          context, 1) *
                                                      0.027)),
                                        ],
                                      ),
                                      SizedBox(
                                          width:
                                              widthNHeight0(context, 0) * 0.01),
                                      Row(
                                        children: [
                                          Icon(Icons.square_outlined,
                                              size: widthNHeight0(context, 1) *
                                                  0.04),
                                          SizedBox(
                                              width: widthNHeight0(context, 0) *
                                                  0.01),
                                          Text(
                                              "${widget.product.square} sqft",
                                              style: TextStyle(
                                                  fontFamily: "kadwa",
                                                  fontSize: widthNHeight0(
                                                          context, 1) *
                                                      0.027)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          widthNHeight0(context, 1) * 0.028),
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
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: widthNHeight0(context, 0) * 0.02,
                                  bottom: widthNHeight0(context, 0) * 0.05),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(50),
                                onTap: () {
                                  setState(() {
                                    widget.product.toggleFavorite();
                                    // widget.onFavoriteChanged(widget.product.isFavourite); // You might want to uncomment this line if needed.
                                  });
                                },
                                child: Container(
                                  child: Icon(
                                    Icons.favorite,
                                    size: widthNHeight0(context, 1) * 0.06,
                                    color: widget.product.isFavourite
                                        ? const Color(0xFFFF6584)
                                        : const Color(0xff263238),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(height: 1, color: Colors.grey[300]),
                        Padding(
                          padding: EdgeInsets.only(
                              left: widthNHeight0(context, 1) * 0.03,
                              right: widthNHeight0(context, 1) * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: widthNHeight0(context, 1) * 0.04,
                              ),
                              Text(
                                " ${widget.product.details_seller}",
                                style: const TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Kadwa",
                                  color: Color(0xFF263238),
                                ),
                              ),
                              SizedBox(
                                height: widthNHeight0(context, 1) * 0.02,
                              ),
                              Text(
                                "${widget.product.description}",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Kadwa",
                                  color: Color(0xFF263238),
                                ),
                              ),
                              SizedBox(
                                height: widthNHeight0(context, 1) * 0.04,
                              ),
                              Text(
                                "Property Information",
                                style: const TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Kadwa",
                                  color: Color(0xFF263238),
                                ),
                              ),
                              SizedBox(
                                height: widthNHeight0(context, 1) * 0.02,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Built Uparea",
                                        style: TextStyle(fontFamily: "kadwa"),
                                      ),
                                      SizedBox(
                                          width:
                                              widthNHeight0(context, 0) * 0.088),
                                      Text(
                                        " ${widget.product.Type}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Kadwa",
                                          color: Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Divider(height: 2, color: Colors.grey[300]),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Purpose",
                                        style: TextStyle(fontFamily: "kadwa"),
                                      ),
                                      SizedBox(
                                          width: widthNHeight0(context, 0) *
                                              0.124),
                                      Text(
                                        " ${widget.product.Purpose}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Kadwa",
                                          color: Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Divider(height: 2, color: Colors.grey[300]),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Added on",
                                        style: TextStyle(fontFamily: "kadwa"),
                                      ),
                                      SizedBox(
                                          width: widthNHeight0(context, 0) *
                                              0.114),
                                      Text(
                                        " ${widget.product.Added}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Kadwa",
                                          color: Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Divider(height: 2, color: Colors.grey[300]),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                ],
                              ),
                              Text(
                                "Validated Information",
                                style: const TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Kadwa",
                                  color: Color(0xFF263238),
                                ),
                              ),
                              SizedBox(
                                height: widthNHeight0(context, 1) * 0.02,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Developer",
                                        style: TextStyle(fontFamily: "kadwa"),
                                      ),
                                      SizedBox(
                                          width:
                                              widthNHeight0(context, 0) * 0.11),
                                      Text(
                                        "Alaa Abdelqader",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Kadwa",
                                          color: Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Divider(height: 2, color: Colors.grey[300]),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Parking Availability",
                                        style: TextStyle(fontFamily: "kadwa"),
                                      ),
                                      SizedBox(
                                          width: widthNHeight0(context, 0) *
                                              0.034),
                                      Text(
                                        "${widget.product.parking}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Kadwa",
                                          color: Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Divider(height: 2, color: Colors.grey[300]),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balcony size ",
                                        style: TextStyle(fontFamily: "kadwa"),
                                      ),
                                      SizedBox(
                                          width:
                                              widthNHeight0(context, 0) * 0.09),
                                      Text(
                                        " ${widget.product.balcony}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Kadwa",
                                          color: Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Divider(height: 2, color: Colors.grey[300]),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Building Name",
                                        style: TextStyle(fontFamily: "kadwa"),
                                      ),
                                      SizedBox(
                                          width: widthNHeight0(context, 0) *
                                              0.075),
                                      Text(
                                        " ${widget.product.buliding_name}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Kadwa",
                                          color: Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Divider(height: 2, color: Colors.grey[300]),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Year of build",
                                        style: TextStyle(fontFamily: "kadwa"),
                                      ),
                                      SizedBox(
                                          width:
                                              widthNHeight0(context, 0) * 0.09),
                                      Text(
                                        " ${widget.product.year_bulid}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Kadwa",
                                          color: Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Divider(height: 2, color: Colors.grey[300]),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Total flour",
                                        style: TextStyle(fontFamily: "kadwa"),
                                      ),
                                      SizedBox(
                                          width: widthNHeight0(context, 0) *
                                              0.108),
                                      Text(
                                        " ${widget.product.total_flour}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Kadwa",
                                          color: Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Divider(height: 2, color: Colors.grey[300]),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Elevators",
                                        style: TextStyle(fontFamily: "kadwa"),
                                      ),
                                      SizedBox(
                                          width:
                                              widthNHeight0(context, 0) * 0.12),
                                      Text(
                                        " ${widget.product.elevetors}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Kadwa",
                                          color: Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Divider(height: 2, color: Colors.grey[300]),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Disabled Services",
                                        style: TextStyle(fontFamily: "kadwa"),
                                      ),
                                      SizedBox(
                                          width:
                                              widthNHeight0(context, 0) * 0.06),
                                      Text(
                                        " ${widget.product.disabled}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Kadwa",
                                          color: Color(0xFF263238),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                  SizedBox(
                                      height: widthNHeight0(context, 1) * 0.02),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: widthNHeight0(context, 1) * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            defaultButton3(
                                fontSize: widthNHeight0(context, 1)*0.044,
                              text: 'Floor Plan', //FloorPlan
                              width: widthNHeight0(context, 1) * 0.36,
                              borderRadius: 5,
                              background: Color(0xffCCD8F4),
                              textColor: Colors.black,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        FloorPlan(product: widget.product),
                                  ),
                                );
                              },
                              borderWidth: 0,
                            ),
                            defaultButton3(
                                   fontSize: widthNHeight0(context, 1)*0.045,
                              text: 'View Map', //MapScreenLocation
                              width: widthNHeight0(context, 1) * 0.36,
                              borderRadius: 5,
                              background: Color(0xffCCD8F4),
                              textColor: Colors.black,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MapScreenLocation(
                                        lon: widget.product.long,
                                        lat: widget.product.late),
                                  ),
                                );
                              },
                              borderWidth: 0,
                            ),
                          ],
                        ),
                        SizedBox(height: widthNHeight0(context, 1) * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            defaultButton3(
                                fontSize: widthNHeight0(context, 1)*0.05,
                              text: 'Services',
                              width: widthNHeight0(context, 1) * 0.36,
                              borderRadius: 5,
                              background: Color(0xffCCD8F4),
                              textColor: Colors.black,
                              onPressed: () {
                                widget.product.long;
                               widget.product.late;
                               
                                print('9999999999999999999 ${widget.product.late}');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EnterServices(
                                        lon: widget.product.long,
                                        lat: widget.product.late),
                                  ),
                                );
                              },
                              borderWidth: 0,
                            ),
                            defaultButton4(
                            
                              text: 'Call',
                              width: widthNHeight0(context, 1) * 0.36,
                              borderRadius: 5,
                              background: Color(0xffF0F2F6),
                              textColor: Color(0xff1A3166),
                              onPressed: () {
                               
String num= widget.product.phone;
                               
                                   makePhoneCall(context, num);
                              },
                              borderWidth: 0,
                            ),
                          ],
                        ),
                        SizedBox(height: widthNHeight0(context, 1) * 0.1),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
