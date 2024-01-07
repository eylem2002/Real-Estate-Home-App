// ignore_for_file: unused_local_variable, annotate_overrides
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/instance_manager.dart';
import 'package:new_batic/controller/signup_controller.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/features/Auth/user_auth/firebase_auth/firebase_auth.dart';
import 'package:new_batic/model/user_model.dart';
import 'package:new_batic/repository/user_repository/user_repository.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signin.dart';

import 'package:new_batic/view/widget/compoents/defaultFormField.dart';
import '../../../../core/constant/imageAsses.dart';
import '../../../widget/compoents/bottoms/deff_button.dart';


class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  SignUpController signUpController = SignUpController();

  final FirebaseAuthService _auth = FirebaseAuthService();
  bool flag = false;

  @override
  void dispose() {
    signUpController.firstName.dispose();
    signUpController.secondName.dispose();
    signUpController.email.dispose();
    signUpController.phone.dispose();
    signUpController.password.dispose();
    super.dispose();
  }

// Future addUserDetails(
// String firstName, String lastName, String email, int age)
// await FirebaseFirestore. instance.collection('users').add({
// 'first name': firstName,
// "last name': lastName,
// 'email': email,
// 'age': age,
// });
// }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEBEF),
      body: SingleChildScrollView(
        child: Form(
          key: signUpController.formKey,
          child: SizedBox(
            height: widthNHeight0(context, 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: widthNHeight0(context, 1) * 0.18),
                      child: SizedBox(
                        //` color:  Colors.red,
                        width: widthNHeight0(context, 1) * 0.5,
                        height: widthNHeight0(context, 0) * 0.1,
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: SvgPicture.asset(ImageAsses.logo),
                        ),
                      ),
                    ),
                  ),
              
                  Padding(
                    padding:
                        EdgeInsets.only(left: widthNHeight0(context, 1) * 0.05),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color(0xff263238),
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kadwa'),
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 0) * 0.04,
                  ),
                  SizedBox(
                   
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormFieldWidget(
                            passToggle: false,
                            passController: signUpController.firstName,
                            labelText: 'First Name',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'First Name must not be empty ';
                              }
                              return null;
                            },
                            str: ''),
                            SizedBox(height: widthNHeight0(context, 1)*0.05,),
                        TextFormFieldWidget(
                            passToggle: false,
                            passController: signUpController.secondName,
                            labelText: 'Second Name',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ' Name must not be empty ';
                              }
                              return null;
                            },
                            str: ''),
                              SizedBox(height: widthNHeight0(context, 1)*0.05,),
                        TextFormFieldWidget(
                            passToggle: false,
                            passController: signUpController.email,
                            labelText: 'Email',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email must not be empty ';
                              }
                                bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.1#$&'*+-/=?^_ {|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value);
                                if (!emailValid) {
                                  return "Enter valid Email";
                                }
                              return null;
                            },
                            
                            str: ''),
                              SizedBox(height: widthNHeight0(context, 1)*0.05,),
                        TextFormFieldWidget(
                            passToggle: false,
                            passController: signUpController.phone,
                            labelText: 'Phone',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Phone must not be empty ';
                              }
                               bool phoneExp=RegExp(r'^\d{10}$').hasMatch(value);
                           
                              if(!phoneExp){
                                  return 'Phone number is not valid ';
                              }
                              
                              return null;
                            },
                            str: ''),
                              SizedBox(height: widthNHeight0(context, 1)*0.05,),
                        TextFormFieldWidget(
                          
                            passToggle: true,
                            passController: signUpController.password,
                            labelText: 'Password',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password must not be empty ';
                              }
                              if (value.length < 7) {
                                  return "Password length should be more than 7 characters";
                                } 
                              return null;
                            },
                            str: '')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 0) * 0.04,
                  ),
                  Center(
                    child: defaultButton(
                        text: 'Sing Up',
                        height: MediaQuery.of(context).size.width * .14,
                        width: MediaQuery.of(context).size.width * .58,
                        borderRadius: 10,
                        function: () {
                       
                        },
                        onPressed: () {
                           if (signUpController.formKey.currentState!.validate()) {
                        
                              // _signUp();
                                _signUp(context);
                        
                          }
                        },
                        borderWidth: 0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already a member?",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .033,
                            fontFamily: 'Kadwa',
                            color: Colors.grey[600]),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LogIn(),
                                ));
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .033,
                                fontFamily: 'Kadwa',
                                color: Colors.grey[700]),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _signUp(BuildContext context) async {
  String firstname = signUpController.firstName.text;
  String lastname = signUpController.secondName.text;
  String email = signUpController.email.text;
  String pass = signUpController.password.text;
  String phone = signUpController.phone.text;

  try {
    User? user = await _auth.signupwithemailandpassword(email, pass);

    if (user != null) {
      print("User is successfully created");

final user=UserModel(firstName: signUpController.firstName.text,secondName: signUpController.secondName.text,email:signUpController.email.text,password:  signUpController.password.text,phoneNo:signUpController.phone.text );
final userRepo=Get.put(UserRepository());
await userRepo.createUser(user);

if(mounted){

      Navigator.pushReplacement( 
        context,
        MaterialPageRoute(
          builder: (context) => const LogIn(),
        ),
      );

}


    } else {
      print("Error occurred during sign up");
if(mounted){
        ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text("The Email is used in another account",  textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
     backgroundColor: Colors.red,
    duration: Duration(seconds: 3),
    // margin: EdgeInsets.only(bottom: 20),
    action: SnackBarAction(
      label: '',
    
      textColor: Colors.white,
      
      onPressed: () {
        // Do something when the user presses the action button
      },
    ),
  ),
);
}

    }
  } catch (e) {
    if (e is FirebaseAuthException) {
      print("Error occurred: $e");

      String errorMessage = "An error occurred during sign up.";

      if (e.code == 'email-already-in-use') {
        errorMessage = "The account already exists for that email.";
      }

    if(mounted){

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error message"),
            content: Text(errorMessage),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
    }
  }
}
}