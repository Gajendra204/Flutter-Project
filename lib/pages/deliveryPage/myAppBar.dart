import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool showBackButton;

  MyAppBar({this.showBackButton = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0,
        title: (Text("Eatsome")));

    // flexibleSpace: Column(
    //   children: [
    //     SizedBox(height: 20.0), // Adjust the height for the desired space
    //   ],
    // ),
    // Adjust the title spacing as needed
  }
}
