import 'package:eatsome_food/DrawerBar/Coupons.dart';
import 'package:eatsome_food/DrawerBar/authentication/authentication.dart';
import 'package:eatsome_food/DrawerBar/authentication/otpPage.dart';
import 'package:eatsome_food/DrawerBar/confirmorder.dart';
import 'package:eatsome_food/Other%20pages/Pizza%20search%20page/pizzaSearch.dart';
import 'package:flutter/material.dart';

import 'DrawerBar/AddCard.dart';
import 'DrawerBar/drawer_bar.dart';
import 'DrawerBar/edit_profile.dart';
import 'DrawerBar/notificationSetting.dart';
import 'DrawerBar/notifications.dart';
import 'DrawerBar/payment.dart';
import 'DrawerBar/setting.dart';
import 'DrawerBar/wallet.dart';
import 'home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //theme: ThemeData(brightness: Brightness.dark),
    theme: ThemeData(
      fontFamily: 'Roboto',
      primarySwatch: Colors.red,
    ),
    title: 'Eatsome',
    initialRoute: 'splash',

    routes: {
      'splash': (context) => SplashScreen(),
      'homeScreen': (context) => HomeScreen(),
      'drawerbar': (context) => DrawerBar(),
      'pizzasearch': (context) => ZomatoApp(),
      'couponpage': (context) => Coupons_page(),
      'notification': (context) => Notification_Page(),
      'wallet': (context) => Wallet(),
      'edit_profile': (context) => Edit_Profile(),
      'setting': (context) => Setting_page(),
      'signup': (context) => Signup_Page(),
      'otpPage': (context) => OtpPage(),
      'payment': (context) => PaymentPage(),
      'addcard': (context) => AddCard(),
      'confirmorder': (context) => ConfirmOrder(),
      'notificationsetting': (context) => Notification_Setting(),
      // 'mapScreen': (context) => MapScreen(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 0.0; // Initial opacity

  @override
  void initState() {
    super.initState();
    // Trigger the fade-in animation after a delay
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity = 1.0; // Set opacity to 1 for fade-in
      });
      Future.delayed(Duration(seconds: 1), () {
        Navigator.of(context).pushReplacementNamed('homeScreen');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // Customize your splash screen background color
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: Duration(seconds: 1), // Animation duration
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Your splash screen content, such as a logo or animation, goes here
              Image.asset(
                'images/logo.png',
                scale: 2,
              ), // Replace with your image

              // Text(
              //   'My App',
              //   style: TextStyle(
              //     fontSize: 24,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
