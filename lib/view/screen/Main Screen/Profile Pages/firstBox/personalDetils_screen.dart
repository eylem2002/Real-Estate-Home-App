// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/controller/login_controller.dart';
import 'package:new_batic/controller/signup_controller.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';


class PersdonalDetilsScreen extends StatefulWidget {
  const PersdonalDetilsScreen({super.key});

  @override
  State<PersdonalDetilsScreen> createState() => _PersdonalDetilsScreenState();
}

class _PersdonalDetilsScreenState extends State<PersdonalDetilsScreen> {
  SignUpController signUpController = SignUpController();
  TextController textController = TextController();
  String firstNamee = "", secondName = "", emailAddress = "", phoneNu = "",passVal="";

  Future<String> resetEmail(String newEmail) async {
    try {
      User? firebaseUser = FirebaseAuth.instance.currentUser;

      if (firebaseUser != null) {
        await firebaseUser.updateEmail(newEmail);
        return 'Success';
      } else {
        return 'User not signed in.';
      }
    } catch (error) {
      return 'Error: $error';
    }
  }

  Future<String> resetPassword(String newPassword) async {
    try {
      User? firebaseUser = FirebaseAuth.instance.currentUser;

      if (firebaseUser != null) {
        await firebaseUser.updatePassword(newPassword);
        return 'Success';
      } else {
        return 'User not signed in.';
      }
    } catch (error) {
      return 'Error: $error';
    }
  }

  Future<void> fetchUserData() async {
    String currentEmail = FirebaseAuth.instance.currentUser?.email ?? '';

    try {
      QuerySnapshot<Object?> querySnapshot = await FirebaseFirestore.instance
          .collection('Users')
          .where('Email', isEqualTo: currentEmail)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        DocumentSnapshot<Object?> userSnapshot = querySnapshot.docs.first;

        Map<String, dynamic>? userData =
            userSnapshot.data() as Map<String, dynamic>?;

        if (userData != null) {
          setState(() {
            firstNamee = userData['FirstName'] ?? "";
            secondName = userData['SecondName'] ?? "";
            emailAddress = userData['Email'] ?? "";
            phoneNu = userData['Phone'] ?? "";
            passVal= userData['Password'] ?? "";
          });
        } else {
          print('User data is null.');
        }
      } else {
        print('No user found with the current email.....');
      }
    } catch (error) {
      print('Error querying user document: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  @override
  Widget build(BuildContext context) {
    if (mounted) {
      fetchUserData();
    }

    return Scaffold(
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
          child: const Text('Personal Details',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
              )),
        ),
      ),
      body: Form(
        key: signUpController.formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Center(
              child: SizedBox(
                width: widthNHeight0(context, 1) * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(height: 1, color: Colors.grey[300]),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: const Text(
                        'First Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kadwa',
                        ),
                      ),
                    ),
                    TextFormWidgetRead(
                      height: widthNHeight0(context, 1) * 0.2,
                      width: double.infinity,
                      passToggle: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ' Name must not be empty ';
                        }
                        return null;
                      },
                      passController: signUpController.firstName,
                      str: firstNamee,
                    ),
                    SizedBox(
                      height: widthNHeight0(context, 1) * 0.008,
                    ),
                    const Text(
                      'Second Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                    TextFormWidgetRead(
                      height: widthNHeight0(context, 1) * 0.2,
                      width: double.infinity,
                      passToggle: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ' Name must not be empty ';
                        }
                        return null;
                      },
                      passController: signUpController.secondName,
                      str: secondName,
                    ),
                    SizedBox(
                      height: widthNHeight0(context, 1) * 0.008,
                    ),
                    const Text(
                      'Email Address',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                    TextFormWidgetRead(
                      height: widthNHeight0(context, 1) * 0.2,
                      width: double.infinity,
                      passToggle: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email must not be empty ';
                        }
                        return null;
                      },
                      passController: signUpController.email,
                      str: emailAddress,
                    ),
                    SizedBox(
                      height: widthNHeight0(context, 1) * 0.008,
                    ),
                    const Text(
                      'Phone',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                    TextFormWidgetRead(
                      height: widthNHeight0(context, 1) * 0.2,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Phone must not be empty ';
                        }
                        return null;
                      },
                      width: double.infinity,
                      passToggle: false,
                      passController: signUpController.phone,
                      str: phoneNu,
                    ),
                    SizedBox(
                      height: widthNHeight0(context, 1) * 0.008,
                    ),
                      const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                    TextFormWidgetRead(
                      height: widthNHeight0(context, 1) * 0.2,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password must not be empty ';
                        }
                        return null;
                      },
                      
                      width: double.infinity,
                      passToggle: false,
                      passController: signUpController.password,
                      str: passVal,
                    ),
                    SizedBox(
                      height: widthNHeight0(context, 1) * 0.008,
                    ),
                  
  

                   
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
