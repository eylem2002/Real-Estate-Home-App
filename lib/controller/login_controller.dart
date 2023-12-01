import 'package:flutter/material.dart';

class TextController{

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();
  GlobalKey<FormState>_formField = GlobalKey<FormState>();


  // ignore: unnecessary_getters_setters
  TextEditingController get controllerEmail => _controllerEmail;

  // ignore: unnecessary_getters_setters
  TextEditingController get controllerPass => _controllerPass;

  GlobalKey<FormState> get formField => _formField;

  set formField(value) {
    _formField = value;
  }

  set controllerPass(TextEditingController value) {
    _controllerPass = value;
  }

  set controllerEmail(TextEditingController value) {
    _controllerEmail = value;
  }
}