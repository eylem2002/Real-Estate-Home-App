import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_batic/core/constant/imageAsses.dart';
import 'package:new_batic/view/widget/CustomeBottomNavBar.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';
import '../../../../controller/login_controller.dart';
import 'signup_screen.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool? isChecked = false;
  bool passToggle = true;
  TextController textController = TextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEBEF),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 75),
          height: widthNHeight0(context, 0),
          child: Form(
              key: textController.formField,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                     //` color:  Colors.red,
                         width: widthNHeight0(context, 1) * 0.5,
                       height: widthNHeight0(context, 0) * 0.1,
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                    
                        child:  SvgPicture.asset(ImageAsses.logo) ,
                      
                      ),
                    ),
                  
                    SizedBox(
                      height: widthNHeight0(context, 0) * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: widthNHeight0(context, 1) * 0.65,
                                bottom: widthNHeight0(context, 0) * 0.01),
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 29,
                                  color: Color(0xff263238),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Kadwa'),
                            ),
                          ),
                          TextFormFieldWidget(
                            passToggle: false,
                            passController: textController.controllerEmail,
                            labelText: 'Email',
                            validator: (value) {
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
                            },
                            str: "Batic@gmail.com",
                          ),
                          TextFormFieldWidget(
                            passToggle: true,
                            
                            passController: textController.controllerPass,
                            labelText: 'password',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Password";
                              } else if (value.length < 7) {
                                return "Password length should be more than 7 characters";
                              } else {
                                return null;
                              }
                            },
                            str: "MyBatic",
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: widthNHeight0(context, 1) * 0.67,
                          child: InkWell(
                            onTap: () {
                              if (textController.formField.currentState!
                                  .validate()) {
                                textController.controllerEmail.clear();
                                textController.controllerPass.clear();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const CustomeBottomNavBar()));
                              }
                            },

                            
                            child: Container(
                              height: widthNHeight0(context, 0) * .068,
                          //    width: widthNHeight0(context, 1) * 0.1,
                              //////////////////edit the width
                              decoration: BoxDecoration(
                                  color: const Color(0xff6482C4),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                child: Text(
                                  "Continue",
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
                                        color: Colors.grey[600],
                                        fontFamily: 'Kadwa'),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not a member?",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * .033,
                              fontFamily: 'Kadwa',
                              color: Colors.grey[600]),
                        ),
                       
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SingUpScreen(),
                                  ));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                 fontWeight: FontWeight.w600,
                                  fontSize:
                                      13,
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

double widthNHeight0(BuildContext context, int number) {
  if (number == 0) {
    return MediaQuery.of(context).size.height;
  } else {
    return MediaQuery.of(context).size.width;
  }
}
