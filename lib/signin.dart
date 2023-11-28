import 'package:flutter/material.dart';

class LogIN extends StatefulWidget {
  const LogIN({super.key});

  @override
  State<LogIN> createState() => _LogINState();
}

class _LogINState extends State<LogIN> {
  final _formfield = GlobalKey<FormState>();

  bool? ischecked = false;
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passtoggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEBEF),
      body: Container(
        padding:  const EdgeInsets.only(top: 50),
        child: Form(
            key: _formfield,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 225,
                    height: 225,
                    decoration: const BoxDecoration(
                    
                      image: DecorationImage(
                        image: AssetImage('assets/images/batic_text.png'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                
                  Container(
                    margin: const EdgeInsets.only(right: 250),
                    child: const Text(
                      "Sign In",


                      style: TextStyle(fontSize: 30, color: Color(0xff263238),fontWeight: FontWeight.w600,fontFamily: 'Kadwa'),
                    ),
                  ),
                  Container(
                    height: 15,
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xff6482C4)),
                            borderRadius: BorderRadius.circular(5),
                            
                          ),
                          contentPadding: const EdgeInsets.all(24),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
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
                      )),
                ])),
      ),
    );
  }
}
