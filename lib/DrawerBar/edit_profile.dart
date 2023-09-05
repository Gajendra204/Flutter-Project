import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Edit_Profile extends StatelessWidget {
  const Edit_Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'notification');
                    },
                    child: Icon(
                      Icons.notifications_none,
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'drawer');
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey.shade300,
              height: 180,
              width: 500,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15, bottom: 10),
                    width: 110,
                    height: 110,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/Anuradha.jpg',
                      ),
                      //radius: 5,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Colors.red,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Edit Photo',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Name*',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: SizedBox(
                height: 45,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Yourname'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Phone Number',
                style: TextStyle(fontSize: 16),
              ),
            ),
            // TextField(
            //   decoration:
            //       InputDecoration(border: OutlineInputBorder(), hintText: '+91'),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: SizedBox(
                height: 45,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixText: '+',
                    suffixText: 'Change',
                  ),
                  initialValue: '91   456789123',
                  // Add the input formatter here to allow only numeric input
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Email',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: SizedBox(
                height: 45,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Location',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: SizedBox(
                height: 45,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Jaipur',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Description',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: SizedBox(
                height: 45,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Tell us a little something about yourself ',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.red),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'delivery');
                      },
                      child: Text(
                        'Save Changes',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
