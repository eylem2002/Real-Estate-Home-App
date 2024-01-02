import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_batic/core/class/prodect.dart';

// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
Future<List<Product>> getProducts() async {
  try {
    List<Product> products = [];
    final getData = await FirebaseFirestore.instance.collection('House').get();
    List<QueryDocumentSnapshot> houses = getData.docs;
    List<HouseModel> house = [];
    for (var element in houses) {
      house.add(HouseModel(
          dataList: element.get('dataList'),
          imageUrls: element.get('imageUrls'),
          imagesHome: element.get('imges_home')));

      List<dynamic> dataList = element.get('dataList');

      List<DataListModel> dataListModels = []; // here is All the data is stored


 DateTime now = DateTime.now();
 int currentYear = now.year;
double var_long=0;
double var_lati=0;
String var_rent_buy="";
String var_city="";
int var_bulidingAge=0;
int var_Bedrooms=0;
int var_Bathrooms=0;
String var_Furnished="",vrfr="";
String var_street="";

      for (var dataElement in dataList) {
        print(dataElement['rent_Time']);

        List<dynamic> Alloption_list = [];
        if (dataElement.containsKey('Alloptions') &&
            dataElement['Alloptions'] != null) {
          List<dynamic> alloptions = dataElement['Alloptions'];

          for (var s2 in alloptions) {
            print(s2);
            Alloption_list.add(s2);  
          }
          
          if( Alloption_list[0]!=null){
              var_rent_buy=Alloption_list[0];
            } 

          if( Alloption_list[1]!=null){
              var_city=Alloption_list[1];
            }
              if( Alloption_list[2]!=null){
              var_bulidingAge=Alloption_list[2];
            }
     if( Alloption_list[3]!=null){
              var_Bedrooms=Alloption_list[3];
            }
             if( Alloption_list[4]!=null){
              var_Bathrooms=Alloption_list[4];
            }
             if( Alloption_list[5]!=null){
              var_Furnished=Alloption_list[5];
            }      if (var_Furnished=="Yes") vrfr="Fully"; else vrfr="Not";
   print("@@@@@@@@@@@ $vrfr");
        }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        List<dynamic> Homelocation_list = [];
        if (dataElement.containsKey('home_location') &&
            dataElement['home_location'] != null) {
          List<dynamic> alloptions = dataElement['home_location'];

          for (var s3 in alloptions) {
            print("===========${s3}");
            Homelocation_list.add(s3);
          }
        }

        print(dataElement['add_time_move']);

//add_home_info
        List<dynamic> homeInfo_list = [];

        if (dataElement.containsKey('add_home_info') &&
            dataElement['add_home_info'] != null) {
          List<dynamic> alloptions = dataElement['add_home_info'];

          for (var s4 in alloptions) {
            print("===========${s4}");
            homeInfo_list.add(s4);
          }
        }
        double d1 = 0, d2 = 0;

        if (dataElement['long_map'] == null)
         {
           var_long= 0;
          d1 = 0;
         }
        else
        {
          var_long= dataElement['long_map'];
              d1 = dataElement['long_map'];
        }
      

       print('+++++++++++++++++++++++$var_long');

          if (dataElement['lati_map'] == null)
          {
             d2 = 0;
            var_lati=0;
          }
         
        else
        {
            d2 = dataElement['lati_map'];
            var_lati=dataElement['lati_map'];

        }

        print('---------------------$var_lati');


        dataListModels.add(DataListModel(
            rentTime: dataElement['rent_Time'].toString(),
            allOption: Alloption_list,
            homeLocation: Homelocation_list,
            addTimeMove: dataElement['add_time_move'].toString(),
            addHomeInfo: homeInfo_list,
            longMap: d1,
            latMap: d2));


      }
              demoProducts.add( new Product(
    long: var_long,
    late: var_lati,
    phone: "0788018812",
    id: 2,
    images:element.get('imageUrls'),
    images2: element.get('imges_home'),
    colors: [
      Colors.white,
    ],
    title: "$var_city, salaman street",
    price: 30000,
    bath: var_Bathrooms,
    bed: var_Bedrooms,
    square: 20.000,
    details_seller: "$vrfr Furnished | Marina View | Ready to Moved",
    Type: "Apartments",
    Purpose: "For @ $var_rent_buy",
    Added: "5 Nov 2022",
    description: "description",
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
    parking: "YES",
    balcony: "120",
    buliding_name: "Starlink",
    year_bulid: "${currentYear-var_bulidingAge}",
    elevetors: "2",
    total_flour: "4",
    disabled: "YES",
  ),);



    }

    return products;
  } catch (e) {
    print('Error fetching products: $e');
    return [];
  }
}

// @override
// Widget build(BuildContext context) {
//   return Container(
//     child: FutureBuilder(
//       future: getProducts(),
//       builder: (BuildContext context, AsyncSnapshot snapshot) {
//         if (snapshot.hasData) {
//           final product = snapshot.data;
//           return SizedBox(
//             height: 600,
//             width: 350,
//             child: ListView.builder(
//               itemCount: product.length,
//               itemBuilder: (BuildContext context, int index) {

//                 return Text(product[index]["House"]);
//               },
//             ),
//           );
//         } else {
//           return Container();
//         }
//       },
//     ),
//   );
// }
// }

class HouseModel {
  final List dataList;
  final List imageUrls;
  final List imagesHome;

  HouseModel(
      {required this.dataList,
      required this.imageUrls,
      required this.imagesHome});
}

class DataListModel {
  final String rentTime;
  final List allOption;
  final List homeLocation;
  final String addTimeMove;
  final List addHomeInfo;
  final double longMap;
  final double latMap;

  DataListModel(
      {required this.rentTime,
      required this.allOption,
      required this.homeLocation,
      required this.addTimeMove,
      required this.addHomeInfo,
      required this.longMap,
      required this.latMap});
}
