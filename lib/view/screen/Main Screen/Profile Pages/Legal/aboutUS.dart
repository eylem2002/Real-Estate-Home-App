import 'package:flutter/material.dart';
import 'package:new_batic/core/services/EnterSevices.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
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
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('About Us',
              style: TextStyle(
                fontSize: widthNHeight0(context, 1) * 0.058,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(height: widthNHeight0(context, 1)*0.01,),
        
         Padding(
           padding:  EdgeInsets.only(top: widthNHeight0(context, 1)*0.1),
           child:
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFF0F2F6), 
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              
                child: Column(children: [ 
                   
                  Text(
                  'Welcome',
                  style: TextStyle(
                  
                    
                    color: Color(0xFF263238), 
                    fontWeight: FontWeight.bold, 
                    fontFamily: 'Kadwa',
                    fontSize: widthNHeight0(context, 1)*0.04,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: widthNHeight0(context, 1)*0.03,),
                  Text(
                  'your ultimate destination to find the perfect home that resonates with your dreams. Developed by Alaa Abdelqader, a passionate Software Engineering student at Jordan Science and Technology University, Batic is a testament to the dedication and skill that goes into crafting an exceptional mobile application.',
                  style: TextStyle(
                    
                    color: Color(0xFF263238), 
                    fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                  ),
                  textAlign: TextAlign.center,
                ),
                ],)
              ),
           ),
         SizedBox(height: widthNHeight0(context, 1)*0.1,),
         
         
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFF0F2F6), 
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              
                child: Column(children: [ 
                  Text(
                  'Our Values',
        
        
                  style: TextStyle(
                  
                    
                    color: Color(0xFF263238), 
                    fontWeight: FontWeight.bold, 
                    fontFamily: 'Kadwa',
                    fontSize: widthNHeight0(context, 1)*0.04,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: widthNHeight0(context, 1)*0.03,),
                  Text(
                  'What sets Batic apart is its commitment to reliability and trust. Every listed home is meticulously checked by our team of engineers to ensure that the information is accurate and trustworthy.\n Your dream home is not just a search away; its a guarantee.',
                  style: TextStyle(
                    
                    color: Color(0xFF263238), 
                    fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                  ),
                  textAlign: TextAlign.center,
                ),
                ],)
              ),
                SizedBox(height: widthNHeight0(context, 1)*0.1,),
       

 Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFF0F2F6), 
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              
                child: Column(children: [ 
                 Text(
            "  Additionally",
                 style: TextStyle(
                    
                    color: Color(0xFF263238), 
                    fontWeight: FontWeight.bold,
                    fontSize: widthNHeight0(context, 1)*0.05,
                      fontFamily: 'Kadwa',

                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: widthNHeight0(context, 1)*0.03,),
                  Text(
            "  Additionally, were excited to introduce the website version of Batic, skillfully created by Eng. Shrouq Salameh. Now, whether you prefer browsing on your mobile device or a computer, Batic is accessible to you.At Batic, we take pride in what weve achieved, and were always striving for improvement. We look forward to evolving with our users, enhancing the apps features, and continuing to provide a reliable platform for finding homes.",
                 style: TextStyle(
                    
                    color: Color(0xFF263238), 
                    fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                  ),
                  textAlign: TextAlign.center,
                ),
                ],)
              )
              ,
               SizedBox(
                  
                    height: widthNHeight0(context, 0) * 0.3,
                    child: Image(
                      image: AssetImage("assets/images/png_pic/batic_text.png"),
                    )) ,
          ],
        ),
      ),
      
    );
  }
}