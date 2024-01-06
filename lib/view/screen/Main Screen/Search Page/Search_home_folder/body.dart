import 'package:flutter/material.dart';
import 'package:new_batic/core/class/prodect.dart';
import 'package:new_batic/core/class/type.dart';
import 'package:new_batic/core/services/EnterSevices.dart';

import 'package:new_batic/view/screen/details/details_screen.dart';
import 'package:new_batic/view/widget/prodectCard.dart';

class BodySearch extends StatefulWidget {
  // ignore: use_super_parameters
  const BodySearch({Key? key}) : super(key: key);

  @override
  State<BodySearch> createState() => _BodySearchState();
}

class _BodySearchState extends State<BodySearch> {
  DateTime ss = DateTime.now();
  int numm = 0;
  bool check = false;
  bool checkbed = false;
  bool checktype = false;
  bool checkArea = false;
  bool checkFurnfished = false;

  @override
  Widget build(BuildContext context) {
    for (var element in demoProducts) {
      print('========${element.title}');
    }

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ...List.generate(
            demoProducts.length,
            (index) {
              String inpu = demoProducts[index].details_seller;
              List<String> parts = inpu.split("||");
              String firstPart = parts.isNotEmpty ? parts[0].trim() : "";
            
            // if(firstPart=='$Furnfished Furnished') {checkFurnfished=true;} else if(Furnfished=="Any") {checkFurnfished=true;} 

            //  if (demoProducts[index].title == "The home in $Area") {checkArea = true;   } else if (Area == "Any") { checkArea = true;   }
            //  if (bednumber == 0) {  checkbed = true;   } else if (demoProducts[index].bed == bednumber) {      checkbed = true;    }
            if (Age == "Any") {   check = true; }  else if (Age == "10+") {  check = ss.year - int.parse(demoProducts[index].year_bulid) >= 10; } else if (Age == "5+") {    check =    ss.year - int.parse(demoProducts[index].year_bulid) >= 5; } else if (Age == "New") {  check =   ss.year - int.parse(demoProducts[index].year_bulid) <= 4;      }
           
           
            //  checktype &&
            //       checkbed &&
            //       check &&
            //       checkArea &&
            //       checkFurnfished

            //  ttype = "Any";
            //           bednumber = -1;
            //           price_start = 50;
            //           price_end = 50;
            //           Age = "Any";
            //           Furnfished = "Any";
             
              if ((ttype == "Any") || demoProducts[index].Purpose == ("For $ttype")  ) 
              {
                if((firstPart=='$Furnfished Furnished')  ||  (Furnfished=="Any") )
                {
                  if((demoProducts[index].title == "The home in $Area") || (Area == "Any")){
                    if((bednumber == 0) || (demoProducts[index].bed == bednumber)){
                        if(check==true ){
                if((int.parse(demoProducts[index].price)  <= price_end && int.parse(demoProducts[index].price)  >=price_start ) || (price_start==0 && price_end==0) )
                {
                return Padding(
                  padding: const EdgeInsets.all(0),
                  child: ProductCard(
                    product: demoProducts[index],
                    onPress: () {
                    //  print('Lllllllllllllll ${demoProducts[index].long}');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                              product: demoProducts[
                                  index]), //// move to the prodect page detailes
                        ),
                        
                      );
                    },
                    onFavoriteChanged: (bool isFavorite) {
                     
                    },
                  ),
                );
              }//
                  }
                    }
                  }
              }
            }

              return const SizedBox.shrink();
            },
          ),
          SizedBox(
            height: widthNHeight0(context, 1) * 0.1,
          )
        ],
      ),
    );
  }
}
