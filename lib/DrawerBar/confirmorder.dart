import 'package:flutter/material.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Your order",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.notifications_none,
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 35,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              height: 200,
              // padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/green-tick.png',
                    color: Colors.green.shade800,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    "Your Order is Confirm!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade800,
                        fontSize: 30),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 45,
                  margin: EdgeInsets.all(25),
                  child: ElevatedButton(
                    child: Text(
                      'Continue to shopping',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    // color: Colors.blue.shade900,
                    // textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, 'homeScreen');
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
