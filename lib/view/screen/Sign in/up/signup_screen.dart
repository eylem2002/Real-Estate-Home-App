import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_batic/controller/signup_controller.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEBEF),
      body: Form(
        key: signUpController.formKey,
        child: SizedBox(
          height: widthNHeight0(context, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Center(
                    
                    child: Padding(
                      padding:  EdgeInsets.only(top: widthNHeight0(context, 1) * 0.19),
                      child: SizedBox(
                        
                         //` color:  Colors.red,
                             width: widthNHeight0(context, 1) * 0.5,
                           height: widthNHeight0(context, 0) * 0.1,
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                        
                            child:  SvgPicture.asset(ImageAsses.logo) ,
                          
                          ),
                        ),
                    ),
                  ),
                // Center(
                //   // child: SizedBox(
                //   //   width: widthNHeight0(context, 1) * 0.55,
                //   //   height: widthNHeight0(context, 0) * 0.19,
                //   //   child: Image(
                //   //     image: const AssetImage(ImageAsses.logo),
                //   //     width: widthNHeight0(context, 1) * 0.8,
                //   //  //  height: widthNHeight0(context, 0)*0.40,
                //   //   ),
                //   // ),
                  
                // ),
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
                  height: widthNHeight0(context, 0) * 0.5,
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
                      TextFormFieldWidget(
                          passToggle: false,
                          passController: signUpController.email,
                          labelText: 'Email',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email must not be empty ';
                            }
                            return null;
                          },
                          str: ''),
                      TextFormFieldWidget(
                          passToggle: false,
                          passController: signUpController.phone,
                          labelText: 'Phone',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Phone must not be empty ';
                            }
                            return null;
                          },
                          str: ''),
                      TextFormFieldWidget(
                          passToggle: true,
                          passController: signUpController.password,
                          labelText: 'Password',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password must not be empty ';
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
                       height:  MediaQuery.of(context).size.width * .14,
                      width:  MediaQuery.of(context).size.width * .58,
                      borderRadius: 10,
                      function: () {
                        if (signUpController.formKey.currentState!
                            .validate()) {}
                      }, onPressed: () {  }, borderWidth: 0),
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
    );
  }
}
