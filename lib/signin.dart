import 'package:flutter/material.dart';
import 'package:new_batic/Home.dart';

class LogIN extends StatefulWidget {
  const LogIN({super.key});

  @override
  State<LogIN> createState() => _LogINState();
}

class _LogINState extends State<LogIN> {
  final _formField = GlobalKey<FormState>();

  bool? isChecked = false;
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEBEF),
      body: Container(
        padding: const EdgeInsets.only(top: 75),
        child: Form(
            key: _formField,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 210,
                    height: 210,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/batic_text.png'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  Container(
                    child: Container(
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
                  ),
                  Container(
                    height: 20,
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff6482C4)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          contentPadding: const EdgeInsets.all(20),
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
                  Container(
                    height: 30,
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: passToggle,
                        controller: passController,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2)),
                          contentPadding: const EdgeInsets.all(20),
                          isDense: true,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Password";
                          } else if (passController.text.length < 6) {
                            return "Password length should be more than 6 characters";
                          }
                          return null;
                        },
                      )),
                  Container(height: MediaQuery.of(context).size.height * 0.01),
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
                        width: MediaQuery.of(context).size.width * 0.7,
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
                  Container(
                    height: MediaQuery.of(context).size.width * .40,
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


//test request