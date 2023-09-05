import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Text(
            "OTP Verification",
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 60),
                        child: Text(
                          'We have sent a verification code to',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          '+91-12345-67890',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Pinput(
              length: 6,
              showCursor: true,
              defaultPinTheme: PinTheme(
                  width: 53,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black54)),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'homeScreen');
                },
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 18, letterSpacing: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
