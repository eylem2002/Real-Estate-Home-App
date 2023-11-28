import 'package:flutter/material.dart';
import 'package:new_batic/core/constant/imageAsses.dart';

import 'package:new_batic/view/screen/Home.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';

class LogIN extends StatefulWidget {
  const LogIN({super.key});

  @override
  State<LogIN> createState() => _LogINState();
}



class _LogINState extends State<LogIN> {


 final TextEditingController _controller =TextEditingController();
  final TextEditingController _controller_pass =TextEditingController();

  final _formField = GlobalKey<FormState>();

  bool? isChecked = false;
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEBEF),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 75),
          child: Form(
              key: _formField,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                //  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   
                  Column(
                    children: [
                       Container(
                      width: 210,
                      height: 210,
                    child: Image.asset(ImageAsses.logo),
                    ),
                   
                    Container(
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.70,
                            bottom: MediaQuery.of(context).size.height * 0.01),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff263238),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Kadwa'),
                        ),
                      ),
                    
                    Container(
                      height: 20,
                    ),
                    
                     TextFormFieldWidget(passToggle: false,passController: _controller,label_text: 'Email',validat:  (value) {
                        if (value!.isEmpty) {
                          return "Enter Email";
                           
                          
                          
                        }
                        bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.1#$&'*+-/=?^_ {|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value);
                        if (!emailValid) {
                          return "Enter valid Email";
                        }
                            return null;
                      }
                    ,str: " Enter Email"),
        
                    Container(
                      height: 30,
                    ),
        
        
                    TextFormFieldWidget(passToggle: true,passController: _controller_pass,label_text: 'password',validat: 
                      (value) {
                     
                       if(value!.isEmpty){
                        return "Enter Password";
                       }else if(value.length<6){
                                              return "Password length should be more than 6 characters";
        
                       }else{
                        return null;
                       }
                       
                        
        
                      }
                    ,str: " Enter Password")
                    ],
                  ),
                  SizedBox(height: widthNHeight0(context, 0)*0.07,),
                   Column(
                    children: [
                       Container(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      height: 60,
                      child: InkWell(
                        onTap: () {
                          if (_formField.currentState!.validate()) {
                            print("Success");
                            emailController.clear();
                            passController.clear();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const Home_page()));
                          }
                        },
                        child: Container(
                         // height: MediaQuery.of(context).size.width * .40,
                        width: widthNHeight0(context, 0)*0.7, //////////////////edit the width
                          decoration: BoxDecoration(
                              color: const Color(0xff6482C4),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Kadwa',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password",
                                style: TextStyle(
                                    color: Colors.grey[600], fontFamily: 'Kadwa'),
                              ))
                        ],
                      ),
                    ),
                    ],
                   ),
                    Container(
                      height: MediaQuery.of(context).size.width * .20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not a member?",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * .033,
                              fontFamily: 'Kadwa',
                              color: Colors.grey[600]),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * .033,
                                  fontFamily: 'Kadwa',
                                  color: Colors.grey[700]),
                            ))
                      ],
                    ),
                  ])),
        ),
      ),
    );
  }
}


double widthNHeight0(BuildContext context,int number){

  if(number == 0){
    return MediaQuery.of(context).size.height;
  }else{
    return MediaQuery.of(context).size.width;
  }

}


