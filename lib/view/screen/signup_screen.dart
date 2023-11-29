import 'package:flutter/material.dart';
import 'package:new_batic/core/constant/signup_controller.dart';
import 'package:new_batic/view/screen/signin.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';
import '../../core/constant/imageAsses.dart';
import '../widget/compoents/deff_button.dart';

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
      body: Form(
        key: signUpController.formKey,
        child: SizedBox(
          height: widthNHeight0(context, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: widthNHeight0(context, 1) * 0.55,
                    height: widthNHeight0(context, 0) * 0.15,
                    child: Image(
                      image: const AssetImage(ImageAsses.logo),
                      width: widthNHeight0(context, 1) * 0.7,
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
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa'),
                  ),
                ),
                SizedBox(
                  height: widthNHeight0(context, 0) * 0.04,
                ),
                SizedBox(
                  height: widthNHeight0(context, 0) * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormFieldWidget(
                          passToggle: false,
                          passController: signUpController.firstName,
                          labelText: '',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'First Name must not be empty ';
                            }
                            return null;
                          },
                          str: 'First Name'),
                      TextFormFieldWidget(
                          passToggle: false,
                          passController: signUpController.secondName,
                          labelText: '',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'First Name must not be empty ';
                            }
                            return null;
                          },
                          str: 'Last Name'),
                      TextFormFieldWidget(
                          passToggle: false,
                          passController: signUpController.email,
                          labelText: '',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'First Name must not be empty ';
                            }
                            return null;
                          },
                          str: 'Email'),
                      TextFormFieldWidget(
                          passToggle: false,
                          passController: signUpController.phone,
                          labelText: '',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'First Name must not be empty ';
                            }
                            return null;
                          },
                          str: 'Phone'),
                      TextFormFieldWidget(
                          passToggle: true,
                          passController: signUpController.password,
                          labelText: '',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'First Name must not be empty ';
                            }
                            return null;
                          },
                          str: 'Enter Password')
                    ],
                  ),
                ),
                SizedBox(
                  height: widthNHeight0(context, 0) * 0.03,
                ),
                Center(
                  child: defaultButton(
                      text: 'Sing Up',
                      width: 200,
                      borderRadius: 10,
                      function: () {
                        if (signUpController.formKey.currentState!
                            .validate()) {}
                      }),
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
