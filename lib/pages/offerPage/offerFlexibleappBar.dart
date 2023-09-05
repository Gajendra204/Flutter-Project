import 'package:flutter/material.dart';


class OfferPageFlexiableAppBar extends StatelessWidget {
  final double appBarHeight = 60.0;

  const OfferPageFlexiableAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              //height: 50,
              margin: const EdgeInsets.only(left: 15, right: 15, top: 40),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0), blurRadius: 5)
                  ]),
              child: const Center(
                child: TextField(
                  style: TextStyle(fontSize: 17),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 19, right: 50, bottom: 8),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Restaurant name or a dish...',
                    hintStyle: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
