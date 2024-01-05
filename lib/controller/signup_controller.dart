// ignore_for_file: unnecessary_getters_setters


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:new_batic/repository/user_repository/user_repository.dart';

class SignUpController{


   TextEditingController _email = TextEditingController();
   TextEditingController _firstName = TextEditingController();
   TextEditingController _secondName = TextEditingController();
   TextEditingController _password = TextEditingController();
   TextEditingController _phone = TextEditingController();
   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get formKey => _formKey;

  set formKey(value) {
    _formKey = value;
  }
final userRepo=Get.put(UserRepository());

  TextEditingController get phone => _phone;

  set phone(TextEditingController value) {
    _phone = value;
  }

  TextEditingController get password => _password;

  set password(TextEditingController value) {
    _password = value;
  }

  TextEditingController get secondName => _secondName;

  set secondName(TextEditingController value) {
    _secondName = value;
  }

  TextEditingController get firstName => _firstName;

  set firstName(TextEditingController value) {
    _firstName = value;
  }

  TextEditingController get email => _email;

  set email(TextEditingController value) {
    _email = value;
  }

// Future<void> createUser(UserModel user) async {
//  await userRepo.createUser(user);
//   // phoneAuthentication(user.phoneNo);
//       // Get.to(()=>const OTPScreen());
     

// }

}