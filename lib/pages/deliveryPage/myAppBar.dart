import 'package:flutter/material.dart';

import '../../DrawerBar/drawer_bar.dart';

class MyAppBar extends StatelessWidget {
  final bool showBackButton;

  MyAppBar({this.showBackButton = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.redAccent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          if (showBackButton && Navigator.canPop(context))
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          Row(
            children: <Widget>[
              Container(
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Set Location',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20.0,
                  ),
                ),
              ),
              GestureDetector(
                child: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'notification');
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DrawerBar()),
                  );
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
      titleSpacing: 0.0,
      // flexibleSpace: Column(
      //   children: [
      //     SizedBox(height: 20.0), // Adjust the height for the desired space
      //   ],
      // ),
      // Adjust the title spacing as needed
    );
  }
}
