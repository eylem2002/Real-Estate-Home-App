import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController salaryController = TextEditingController();
  TextEditingController foodExpensesController = TextEditingController();
  TextEditingController billsController = TextEditingController();
  TextEditingController obligationsController = TextEditingController();
  TextEditingController entertainmentController = TextEditingController();
  TextEditingController homePriceController = TextEditingController();

  String result = '';

  void calculateAffordability() {
    double salary = double.tryParse(salaryController.text) ?? 0;
    double expenses = double.tryParse(foodExpensesController.text) ?? 0;
    expenses += double.tryParse(billsController.text) ?? 0;
    expenses += double.tryParse(obligationsController.text) ?? 0;
    expenses += double.tryParse(entertainmentController.text) ?? 0;

    double homePrice = double.tryParse(homePriceController.text) ?? 0;

    if (salary - expenses >= homePrice) {
      result = 'You can afford the home!';
    } else {
      result = 'The home may be too expensive for you.';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
        title: Text(
          'Real Estate Calculator',
          style: TextStyle(
            fontSize: widthNHeight0(context, 1) * 0.055,
            fontWeight: FontWeight.bold,
            fontFamily: 'Kadwa',
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(height: widthNHeight0(context, 1)*0.01,),
          Padding(
            
            padding:  EdgeInsets.all(widthNHeight0(context, 1)*0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  SizedBox(height: widthNHeight0(context, 1)*0.03),
                Text('Enter your financial details:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Kadwa', color: Color(0xff263238))),
                SizedBox(height: widthNHeight0(context, 1)*0.05),
                buildCustomTextField(
                  controller: salaryController,
                  labelText: 'Monthly Salary',
                ),
                   SizedBox(height: widthNHeight0(context, 1)*0.04),
                buildCustomTextField(
                  controller: foodExpensesController,
                  labelText: 'Food Expenses',
                ),
                 SizedBox(height: widthNHeight0(context, 1)*0.04),
                buildCustomTextField(
                  controller: billsController,
                  labelText: 'Bills (water, electricity)',
                ),
              SizedBox(height: widthNHeight0(context, 1)*0.04),
                buildCustomTextField(
                  controller: obligationsController,
                  labelText: 'Other Obligations',
                ),
                 SizedBox(height: widthNHeight0(context, 1)*0.04),
                buildCustomTextField(
                  controller: entertainmentController,
                  labelText: 'Entertainment Expenses',
                ),
                 SizedBox(height: widthNHeight0(context, 1)*0.04),
                Text('Enter the home details:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Kadwa', color: Color(0xff263238))),
             SizedBox(height: widthNHeight0(context, 1)*0.02),
                buildCustomTextField(
                  controller: homePriceController,
                  labelText: 'Home Price',
                ),
             SizedBox(height: widthNHeight0(context, 1)*0.07),
                Center(
                  child: defaultButton(
                    text: 'Calculate Affordability',
                    onPressed: calculateAffordability,
                    borderWidth: 1,
                    height:  widthNHeight0(context, 1)*0.14,
                    width: widthNHeight0(context, 1)*0.8,
                    borderRadius: 10,
                  ),
                ),
                SizedBox(height: widthNHeight0(context, 1)*0.07),
                Center(
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Kadwa', color: Color(0xff263238)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
Widget buildCustomTextField({
    required TextEditingController controller,
    required String labelText,
  }) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly, // Allow only numbers
      ],
      style: TextStyle(color: Color(0xff263238)),
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xff263238), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xff263238), width: 2),
        ),
      ),
    );
  }
}