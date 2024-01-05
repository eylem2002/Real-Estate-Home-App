import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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
          id: element.id,
          dataList: element.get('dataList'),
          imageUrls: element.get('imageUrls'),
          imagesHome: element.get('imges_home')
          )
          
          );
          
         
       List<dynamic> dataList = element.get('dataList');
        List<String> idList =[];
        idList.add(element.id);

          for (var dataElement in idList) {
        // Check if the ID already exists in demoProducts
        if (demoProducts.any((product) => product.id == dataElement)) {
        
continue;

        }
          
        

      List<DataListModel> dataListModels = []; 


 DateTime now = DateTime.now();
 int currentYear = now.year;
double var_long=0;
double var_lati=0;
String var_rent_buy="";
String var_city="";
int var_bulidingAge=0;
int varbedrooms=0;
int var_Bathrooms=0;
String var_Furnished="",vrfr="";
String var_phone="";
String var_Building_name="";
String  var_details="";
String var_timeMove="";
String var_sqft="";
String var_ownername="";
String var_totalFloor="";
String var_Balcony="";
String var_price="";
String var_Disabled="";
String var_park="";
String var_elevators="";
String var_area="";
String idd="";

// print(house[0].id);
  for (var dataElement in idList) 
  {
idd=dataElement;
print(idd);
  }



      for (var dataElement in dataList) {
       // print(dataElement['rent_Time']);

        List<dynamic> Alloption_list = [];
        if (dataElement.containsKey('Alloptions') &&
            dataElement['Alloptions'] != null) {
          List<dynamic> alloptions = dataElement['Alloptions'];

          for (var s2 in alloptions) {
         //   print(s2);
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
              varbedrooms=Alloption_list[3];
            }
             if( Alloption_list[4]!=null){
              var_Bathrooms=Alloption_list[4];
            }
             if( Alloption_list[5]!=null){
              var_Furnished=Alloption_list[5];
            }      if (var_Furnished=="Yes") vrfr="Fully"; else vrfr="Not";


        }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        List<dynamic> Homelocation_list = [];
        if (dataElement.containsKey('home_location') &&
            dataElement['home_location'] != null) {
          List<dynamic> alloptions = dataElement['home_location'];


          for (var s3 in alloptions) {
           // print("===========${s3}");
            Homelocation_list.add(s3);
          }

  if( Homelocation_list[0]!=null){
              var_phone=Homelocation_list[0];
            } 
            
  if( Homelocation_list[1]!=null){
              var_Building_name=Homelocation_list[1];
            } 

if( Homelocation_list[2]!=null){
              var_details=Homelocation_list[2];
            } 
  //  print("@@@@@@@@@@@ $var_details");

        }




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // print(dataElement['add_time_move']);
       if(dataElement['add_time_move']!=null) 
       var_timeMove=dataElement['add_time_move'];
      

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//add_home_info

        List<dynamic> homeInfo_list = [];

        if (dataElement.containsKey('add_home_info') &&
            dataElement['add_home_info'] != null) {
          List<dynamic> alloptions = dataElement['add_home_info'];

          for (var s4 in alloptions) {
            // print("===========${s4}");
            homeInfo_list.add(s4);
          }

          if( homeInfo_list[0]!=null){
              var_sqft=homeInfo_list[0].toString();
            } 
             if( homeInfo_list[1]!=null){
              var_area=homeInfo_list[1].toString();
            } 
   
    if( homeInfo_list[2]!=null){
              var_ownername=homeInfo_list[2].toString();
            } 

            if( homeInfo_list[3]!=null){
              var_totalFloor=homeInfo_list[3].toString();
            } 

             if( homeInfo_list[4]!=null){
              var_Balcony=homeInfo_list[4].toString();
            } 

             if( homeInfo_list[5]!=null){
              var_price=homeInfo_list[5].toString();
            } 
           
 if( homeInfo_list[6]!=null){
              var_Disabled=homeInfo_list[6].toString();
            } 
           


             if( homeInfo_list[6]!=null){
              var_Disabled=homeInfo_list[6].toString();
            } 
            if( homeInfo_list[7]!=null){
              var_park=homeInfo_list[7].toString();
            } 
              if( homeInfo_list[8]!=null){
              var_elevators=homeInfo_list[8].toString();
            } 
  //  print("@@@@@@@@@@@ $var_area");





        }
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        
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
      

      //  print('+++++++++++++++++++++++$var_long');

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

        // print('---------------------$var_lati');

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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
    phone: var_phone,
    id: idd,
    images:element.get('imageUrls'),
    images2: element.get('imges_home'),
    colors: [
      Colors.white,
    ],
    title: "The home in $var_city",
    price: "$var_price ",
    bath: var_Bathrooms,
    bed: varbedrooms,
    square: var_sqft,
    details_seller: "$vrfr Furnished || Move $var_timeMove",
    Type: var_area,//////////////
    Purpose: "For $var_rent_buy",
    Added: var_ownername,
    description: var_details,
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
    parking: var_park,
    balcony: '$var_Balcony sqft',
    buliding_name: var_Building_name,
    year_bulid: "${currentYear-var_bulidingAge}",
    elevetors: var_elevators,
    total_flour: var_totalFloor,
    disabled: var_Disabled,
  ),);

          }

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
  final String id;
  final List dataList;
  final List imageUrls;
  final List imagesHome;

  HouseModel(

      {
         required this.id,
        required this.dataList,
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
