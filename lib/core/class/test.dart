import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/core/class/sharedData.dart';

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
       someth=element.get('dataList');

        List<String> idList =[];
        idList.add(element.id);

          for (var dataElement in idList) {
        if (demoProducts.any((product) => product.id == dataElement)) {
        
continue;

        }
          
        

      List<DataListModel> dataListModels = []; 


 DateTime now = DateTime.now();
 int currentYear = now.year;
 String useriid="";
double varLong=0;
double varLati=0;
String varRentBuy="";
String varCity="";
int varBulidingage=0;
int varbedrooms=0;
int varBathrooms=0;
String varFurnished="",vrfr="";
String varPhone="";
String varBuildingName="";
String  varDetails="";
String varTimemove="";
String varSqft="";
String varOwnername="";
String varTotalfloor="";
String varBalcony="";
String varPrice="";
String varDisabled="";
String varPark="";
String varElevators="";
String varArea="";
String idd="";

// print(house[0].id);
  for (var dataElement in idList) 
  {
idd=dataElement;
print('ooooooooooooooooooo$idd');//home id (document name)
  }



      for (var dataElement in dataList) {
       // print(dataElement['rent_Time']);

        List<dynamic> alloptionList = [];
        if (dataElement.containsKey('Alloptions') &&
            dataElement['Alloptions'] != null) {
          List<dynamic> alloptions = dataElement['Alloptions'];

          for (var s2 in alloptions) {
         //   print(s2);
            alloptionList.add(s2);  
          }
          
          if( alloptionList[0]!=null){
              varRentBuy=alloptionList[0];
            } 

          if( alloptionList[1]!=null){
              varCity=alloptionList[1];
            }
              if( alloptionList[2]!=null){
              varBulidingage=alloptionList[2];
            }
     if( alloptionList[3]!=null){
              varbedrooms=alloptionList[3];
            }
             if( alloptionList[4]!=null){
              varBathrooms=alloptionList[4];
            }
             if( alloptionList[5]!=null){
              varFurnished=alloptionList[5];
            }      if (varFurnished=="Yes") {
              vrfr="Fully";
            } else {
              vrfr="Not";
            }


        }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        List<dynamic> homelocationList = [];
        if (dataElement.containsKey('home_location') &&
            dataElement['home_location'] != null) {
          List<dynamic> alloptions = dataElement['home_location'];


          for (var s3 in alloptions) {
           // print("===========${s3}");
            homelocationList.add(s3);
          }

  if( homelocationList[0]!=null){
              varPhone=homelocationList[0];
            } 
            
  if( homelocationList[1]!=null){
              varBuildingName=homelocationList[1];
            } 

if( homelocationList[2]!=null){
              varDetails=homelocationList[2];
            } 
  //  print("@@@@@@@@@@@ $var_details");

        }




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // print(dataElement['add_time_move']);
       if(dataElement['add_time_move']!=null) {
         varTimemove=dataElement['add_time_move'];
       }
      

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//add_home_info

        List<dynamic> homeinfoList = [];

        if (dataElement.containsKey('add_home_info') &&
            dataElement['add_home_info'] != null) {
          List<dynamic> alloptions = dataElement['add_home_info'];

          for (var s4 in alloptions) {
            // print("===========${s4}");
            homeinfoList.add(s4);
          }

          if( homeinfoList[0]!=null){
              varSqft=homeinfoList[0].toString();
            } 
             if( homeinfoList[1]!=null){
              varArea=homeinfoList[1].toString();
            } 
   
    if( homeinfoList[2]!=null){
              varOwnername=homeinfoList[2].toString();
            } 

            if( homeinfoList[3]!=null){
              varTotalfloor=homeinfoList[3].toString();
            } 

             if( homeinfoList[4]!=null){
              varBalcony=homeinfoList[4].toString();
            } 

             if( homeinfoList[5]!=null){
              varPrice=homeinfoList[5].toString();
            } 
           
 if( homeinfoList[6]!=null){
              varDisabled=homeinfoList[6].toString();
            } 
           


             if( homeinfoList[6]!=null){
              varDisabled=homeinfoList[6].toString();
            } 
            if( homeinfoList[7]!=null){
              varPark=homeinfoList[7].toString();
            } 
              if( homeinfoList[8]!=null){
              varElevators=homeinfoList[8].toString();
            } 
  //  print("@@@@@@@@@@@ $var_area");





        }
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        
        double d1 = 0, d2 = 0; String d3="";



        if (dataElement.containsKey('long_map') &&
            dataElement['long_map'] != null) {

         varLong= dataElement['long_map'];
              d1 = dataElement['long_map'];

        }

       
      

      //  print('+++++++++++++++++++++++$var_long');

          if (dataElement.containsKey('lati_map') &&
            dataElement['lati_map'] != null) {

         varLati= dataElement['lati_map'];
              d2 = dataElement['lati_map'];

        }

       // print('---------------------${dataElement['lati_map']}');

         if (dataElement.containsKey('userid') &&
            dataElement['userid'] != null) {

         useriid= dataElement['userid'];
              d3 = dataElement['userid'];
              
              allUsers.add(useriid);

        }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        dataListModels.add(DataListModel(
            rentTime: dataElement['rent_Time'].toString(),
            allOption: alloptionList,
            homeLocation: homelocationList,
            addTimeMove: dataElement['add_time_move'].toString(),
            addHomeInfo: homeinfoList,
            longMap: d1,
            latMap: d2,
            userID:d3
            ));


      }
              demoProducts.add( Product(
    ussid:useriid,
    long: varLong,
    late: varLati,
    phone: varPhone,
    id: idd,
    images:element.get('imageUrls'),
    images2: element.get('imges_home'),
    colors: [
      Colors.white,
    ],
    title: "The home in $varCity",
    price: "$varPrice ",
    bath: varBathrooms,
    bed: varbedrooms,
    square: varSqft,
    details_seller: "$vrfr Furnished || Move $varTimemove",
    Type: varArea,//////////////
    Purpose: "For $varRentBuy",
    Added: varOwnername,
    description: varDetails,
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
    parking: varPark,
    balcony: '$varBalcony sqft',
    buliding_name: varBuildingName,
    year_bulid: "${currentYear-varBulidingage}",
    elevetors: varElevators,
    total_flour: varTotalfloor,
    disabled: varDisabled,
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
  final String userID;

  DataListModel(
      {required this.rentTime,
      required this.allOption,
      required this.homeLocation,
      required this.addTimeMove,
      required this.addHomeInfo,
      required this.longMap,
      required this.latMap,
      required this.userID});
}
