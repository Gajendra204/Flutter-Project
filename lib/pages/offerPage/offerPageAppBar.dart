import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OfferPageAppBar extends StatelessWidget {
  final double barHeight = 66.0;

  const OfferPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: const Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: Icon(
                  Icons.location_on,
                  color: Colors.red,
                )),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              child: const Padding(
                padding: EdgeInsets.all(0.0),
                child: Text(
                  'Set Location',
                  style: TextStyle(
                      color: Colors.red, fontFamily: 'Poppins', fontSize: 20.0),
                ),
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              child: const Padding(
                  padding: EdgeInsets.only(left: 0.0),
                  child: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.red,
                  )),
            ),
          ),
          const SizedBox(
            width: 140,
          ),
          GestureDetector(
            child: Container(
              child: const Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'drawerbar');
              print('clicked');
            },
            child: Container(
              child: const Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
