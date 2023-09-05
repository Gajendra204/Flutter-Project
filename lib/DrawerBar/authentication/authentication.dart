import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class Signup_Page extends StatefulWidget {
  const Signup_Page({super.key});

  @override
  State<Signup_Page> createState() => _Signup_PageState();
}

class _Signup_PageState extends State<Signup_Page> {
  Country selectedCountry = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: Image.asset(
                    'images/sign-up-bg.png'), // Include your image here
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'India\'s #1 Food',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Delivery and Dining',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'App',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Log in or sign up',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintText: "Enter phone number",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey.shade600),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black12),
                      ),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(12.0),
                        child: InkWell(
                          onTap: () {
                            showCountryPicker(
                                context: context,
                                countryListTheme: CountryListThemeData(
                                    bottomSheetHeight: 450),
                                onSelect: (value) {
                                  setState(() {
                                    selectedCountry = value;
                                  });
                                });
                          },
                          child: Text(
                            "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'otpPage');
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 18, letterSpacing: 1),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'or',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 45, left: 45, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset('images/search.png'),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset('images/apple-logo.png'),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset('images/letter-f.png'),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset('images/twitter.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "By continuting you agree to our",
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 12),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Terms of service",
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Content Policy",
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
