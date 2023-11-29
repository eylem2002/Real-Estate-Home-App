import 'package:flutter/material.dart';

class SearchBarScreen extends StatelessWidget {
  const SearchBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/close.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}
