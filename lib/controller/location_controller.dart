// ignore_for_file: unnecessary_getters_setters


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:new_batic/core/services/user_repository.dart';


class LocationController{


   TextEditingController _phon = TextEditingController();
   TextEditingController _strr= TextEditingController();
   TextEditingController _det = TextEditingController();

   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get formKey => _formKey;

  set formKey(value) {
    _formKey = value;
  }
final userRepo=Get.put(UserRepository());

  TextEditingController get phon => _phon;

  set phon(TextEditingController value) {
    _phon = value;
  }

  TextEditingController get strr => _strr;

  set strr(TextEditingController value) {
    _strr = value;
  }

  TextEditingController get det => _det;

  set det(TextEditingController value) {
    _det = value;
  }

 


}