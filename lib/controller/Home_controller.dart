// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/material.dart';

class HomeConroller{


   TextEditingController _sqft = TextEditingController();
   TextEditingController _builtarea = TextEditingController();
   TextEditingController _Ownership= TextEditingController();
   TextEditingController _total = TextEditingController();
   TextEditingController _balcony = TextEditingController();
   TextEditingController _price =  TextEditingController();
    TextEditingController _elevetor = TextEditingController();
    TextEditingController _year = TextEditingController();
    TextEditingController _longi = TextEditingController();
    TextEditingController _lati = TextEditingController();

    
      GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get formKey => _formKey;

  set formKey(value) {
    _formKey = value;
  }


  TextEditingController get sqft => _sqft;

  set sqft(TextEditingController value) {
    _sqft = value;
  }

  TextEditingController get builtarea => _builtarea;

  set builtarea(TextEditingController value) {
    _builtarea = value;
  }

  TextEditingController get total => _total;

  set total(TextEditingController value) {
    _total = value;
  }

  TextEditingController get Ownership => _Ownership;

  set Ownership(TextEditingController value) {
    _Ownership = value;
  }

  TextEditingController get balcony => _balcony;

  set balcony(TextEditingController value) {
    _balcony = value;
  }

TextEditingController get price => _price;

  set price(TextEditingController value) {
    _price = value;
  }

TextEditingController get elevetor => _elevetor;

  set elevetor(TextEditingController value) {
    _elevetor = value;
  }
  
  TextEditingController get year => _year;

  set year(TextEditingController value) {
    _year = value;
  }



   TextEditingController get longi => _longi;

  set longi(TextEditingController value) {
    _longi = value;
  }


   TextEditingController get lati => _lati;

  set lati(TextEditingController value) {
    _lati = value;
  }
}