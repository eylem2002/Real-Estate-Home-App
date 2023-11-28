import 'package:flutter/material.dart';
import 'package:new_batic/components.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  var email=TextEditingController();
  var firstName=TextEditingController();
  var SecondName=TextEditingController();
  var password=TextEditingController();
  var phone=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key:_formKey ,
        child: SingleChildScrollView(
          child: Center(
            child: SafeArea(
                child:Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Column(
                    children: [
                      const Image(
                          image:AssetImage('assets/images/batic_text.png'),
                      width: 200,
                      height: 100,),
                      const Padding(
                        padding:  EdgeInsets.only(
                            top: 20.0,
                          right: 250
          
                        ),
                        child:  Text('Sing Up',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      const SizedBox(height: 40),
                      defaultFormField(
                        controller: firstName,
                        tybe: TextInputType.text,
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return'First Name must not be empty ';
                          }
                          return null;
                        },
                        label: 'First Name',
          
                      ),
                      const SizedBox(height: 20),
                      defaultFormField(
                        controller: SecondName,
                        tybe: TextInputType.text,
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return'Second Name must not be empty ';
                          }
                          return null;
                        }, 
                        label: 'Second Name',
          
                      ),
                      const SizedBox(height: 20),
                      defaultFormField(
                        controller: email,
                        tybe: TextInputType.emailAddress,
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return'email must not be empty ';
                          }
                          return null;
                        },
                        label: 'email',
          
                      ),
                      const SizedBox(height: 20),
                      defaultFormField(
                        controller: phone,
                        tybe: TextInputType.phone,
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return'Phone must not be empty ';
                          }
                          return null;
                        },
                        label: 'Phone',
                      ),
                      const SizedBox(height: 20),
                      defaultFormField(
                        controller: password,
                        tybe: TextInputType.visiblePassword,
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return'password must not be empty ';
                          }
                          return null;
                        },
                        label: 'Password',
                      ),
                      const SizedBox(height: 30),
                      defaultButton(text: 'Sing Up',
                      width: 200,
                      borderRadius: 10,
                        function: ()
                          {
                          if (_formKey.currentState!.validate()) {}
          
                          }
                      ),
                    ],
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }
}
