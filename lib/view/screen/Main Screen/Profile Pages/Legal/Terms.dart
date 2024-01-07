import 'package:flutter/material.dart';
import 'package:new_batic/core/services/EnterSevices.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
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
          child: Text('Terms Of Use',
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
                  'Acceptance of Terms',
                  style: TextStyle(
                    
                    color: Color(0xFF263238), 
                    fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: widthNHeight0(context, 1)*0.03,),
                  Text(
                  'By using Batic, you acknowledge that you have read, understood, and agree to abide by these Terms of Use. Batic reserves the right to update or modify these terms at any time without prior notice. Your continued use of the Service after such modifications will constitute your acknowledgment and acceptance of the updated terms.',
                  style: TextStyle(
                    
                    color: Color(0xFF263238), 
                    fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    
                  ),
                  textAlign: TextAlign.left,
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
                  'Termination',
        
        
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
                  'Batic reserves the right to terminate or suspend your access to the Service without prior notice for any reason, including, but not limited to, a breach of these Terms of Use.',
                  style: TextStyle(
                    
                    color: Color(0xFF263238), 
                    fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                  ),
                  textAlign: TextAlign.left,
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
            "Use of the Service",
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
            " a. Eligibility:\t You must be at least 18 years old or have the legal capacity to enter into these Terms to use Batic.\n\nb. User Accounts:\t Some features of Batic may require you to create a user account. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.",
                 style: TextStyle(
                    
                    color: Color(0xFF263238), 
                    fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                  ),
                  textAlign: TextAlign.left,
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