import 'package:flutter/material.dart';
import 'package:new_batic/controller/login_controller.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signin.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';

class PersdonalDetilsScreen extends StatefulWidget {
  const PersdonalDetilsScreen({super.key});

  @override
  State<PersdonalDetilsScreen> createState() => _PersdonalDetilsScreenState();
}

class _PersdonalDetilsScreenState extends State<PersdonalDetilsScreen> {
  TextController textController = TextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Container(
          padding: const EdgeInsets.all(9),
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 15,
              child:   IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        title:Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: const Text('Personal Details',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kadwa',
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15.0),
          child: Center(
            child: SizedBox(
              width: widthNHeight0(context, 1)*0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(height: 1, color: Colors.grey[300]),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: const Text('Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kadwa',
                      ),
                    ),
                  ),
                  TextFormWidget(
                    height: 45,
                    width:double.infinity,
                    passToggle: false,
                    passController: textController.controllerEmail,
                    str: 'name',
                  ),
                  const SizedBox(
                      height: 20
                  ),
                  const Text('Email Address',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  TextFormWidget(
                    height: 45,
                    width:double.infinity,
                    passToggle: false,
                    passController: textController.controllerEmail,
                    str: 'email@gmail.com',
                  ),
                  const SizedBox(
                      height: 20
                  ),
                  const Text('Phone',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),
                  TextFormWidget(
                    height: 45,
                    width:double.infinity,
                    passToggle: false,
                    passController: textController.controllerEmail,
                    str: '009627954575',
                  ),
                  const SizedBox(
                      height: 20
                  ),
                  const Text('Country',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kadwa',
                    ),
                  ),

                  TextFormWidget(
                    height: 45,
                    width:double.infinity,
                    passToggle: false,
                    passController: textController.controllerEmail,
                    str: 'jordan',
                  ),
                  const SizedBox(
                      height: 10
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon:const Icon(
                            Icons.delete_outline,
                            size: 25,
                            color: Color(0xff263238),
                          )),
                      const Text(
                        'Delete Account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kadwa',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                      height: 60,
                  ),
                  defaultButton(text: 'Update',
                      onPressed: (){

                      },
                      borderWidth:10 ,
                    height: 45,
                    borderRadius: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
