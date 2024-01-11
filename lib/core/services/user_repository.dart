
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_batic/model/user_model.dart';
//contain  create update delete 
class UserRepository extends GetxController{
  static UserRepository get instance=>Get.find();
  final _db=FirebaseFirestore.instance;
  createUser(UserModel user) async {
   await  _db.collection("Users").add(user.toJson()).whenComplete(() => Get.snackbar("Success", "You account has been created",
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.lightBlue.withOpacity(0.1),
    colorText: Colors.black), 
    // ignore: body_might_complete_normally_catch_error, avoid_types_as_parameter_names, non_constant_identifier_names
    ).catchError((error,StackTrace) {
      Get.snackbar("Error", "Something went wrong.Try again",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red.withOpacity(0.01),
      colorText: Colors.red   );
      print(error.toString());

     
    } );
}
}