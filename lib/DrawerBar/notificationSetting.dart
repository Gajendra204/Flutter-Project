import 'package:flutter/material.dart';

class Notification_Setting extends StatefulWidget {
  const Notification_Setting({super.key});

  @override
  State<Notification_Setting> createState() => _Notification_SettingState();
}

class _Notification_SettingState extends State<Notification_Setting> {
  bool forAndroid = false;
  bool forAndroid1 = false;
  bool forAndroid2 = false;
  bool forAndroid3 = false;
  bool forAndroid4 = false;
  bool forAndroid5 = false;
  bool forAndroid6 = false;
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
          "Notification Prefernences",
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
          children: [
            Card(
              elevation: 4,
              child: Container(
                width: 500,
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 20),
                          child: Text(
                            "Push Notifications",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 21),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Switch(
                            // thumb color (round icon)
                            activeColor: Colors.white,
                            activeTrackColor: Colors.red,
                            inactiveThumbColor: Colors.blueGrey.shade600,
                            inactiveTrackColor: Colors.grey.shade400,
                            splashRadius: 50.0,
                            // boolean variable value
                            value: forAndroid,
                            // changes the state of the switch
                            onChanged: (value) =>
                                setState(() => forAndroid = value),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      child: Text('Tap to enable notifications'),
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: Container(
                width: 500,
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 20),
                          child: Text(
                            "Enable all",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 21),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Switch(
                            // thumb color (round icon)
                            activeColor: Colors.white,
                            activeTrackColor: Colors.red,
                            inactiveThumbColor: Colors.blueGrey.shade600,
                            inactiveTrackColor: Colors.grey.shade400,
                            splashRadius: 50.0,
                            // boolean variable value
                            value: forAndroid1,
                            // changes the state of the switch
                            onChanged: (value) =>
                                setState(() => forAndroid1 = value),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      child: Text('Active all notifications'),
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: Container(
                width: 500,
                // height: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 20),
                          child: Text(
                            "Newsletters",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 21),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      child: Text(
                          'Receive newsletter to stay up-to date with whats brewing in\nfood industry'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.email),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 14,
                          ),
                          child: Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Switch(
                            // thumb color (round icon)
                            activeColor: Colors.white,
                            activeTrackColor: Colors.red,
                            inactiveThumbColor: Colors.blueGrey.shade600,
                            inactiveTrackColor: Colors.grey.shade400,
                            splashRadius: 50.0,
                            // boolean variable value
                            value: forAndroid2,
                            // changes the state of the switch
                            onChanged: (value) =>
                                setState(() => forAndroid2 = value),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: Container(
                width: 500,
                // height: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 20),
                          child: Text(
                            "Promos and offers",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 21),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      child: Text(
                          'Receive updates about coupons, promotions and money\nsaving offers'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.email),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 14,
                          ),
                          child: Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Switch(
                            // thumb color (round icon)
                            activeColor: Colors.white,
                            activeTrackColor: Colors.red,
                            inactiveThumbColor: Colors.blueGrey.shade600,
                            inactiveTrackColor: Colors.grey.shade400,
                            splashRadius: 50.0,
                            // boolean variable value
                            value: forAndroid3,
                            // changes the state of the switch
                            onChanged: (value) =>
                                setState(() => forAndroid3 = value),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.notifications),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 14,
                          ),
                          child: Text(
                            'Push',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Switch(
                            // thumb color (round icon)
                            activeColor: Colors.white,
                            activeTrackColor: Colors.red,
                            inactiveThumbColor: Colors.blueGrey.shade600,
                            inactiveTrackColor: Colors.grey.shade400,
                            splashRadius: 50.0,
                            // boolean variable value
                            value: forAndroid4,
                            // changes the state of the switch
                            onChanged: (value) =>
                                setState(() => forAndroid4 = value),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: Container(
                width: 500,
                // height: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 20),
                          child: Text(
                            "Social notifications",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 21),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      child: Text(
                          'Get notified when someone follows your profile, or when you\ngetlikes and comments on reviews and photos posted by\nyou'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.email),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 14,
                          ),
                          child: Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Switch(
                            // thumb color (round icon)
                            activeColor: Colors.white,
                            activeTrackColor: Colors.red,
                            inactiveThumbColor: Colors.blueGrey.shade600,
                            inactiveTrackColor: Colors.grey.shade400,
                            splashRadius: 50.0,
                            // boolean variable value
                            value: forAndroid6,
                            // changes the state of the switch
                            onChanged: (value) =>
                                setState(() => forAndroid6 = value),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.notifications),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 14,
                          ),
                          child: Text(
                            'Push',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Switch(
                            // thumb color (round icon)
                            activeColor: Colors.white,
                            activeTrackColor: Colors.red,
                            inactiveThumbColor: Colors.blueGrey.shade600,
                            inactiveTrackColor: Colors.grey.shade400,
                            splashRadius: 50.0,
                            // boolean variable value
                            value: forAndroid5,
                            // changes the state of the switch
                            onChanged: (value) =>
                                setState(() => forAndroid5 = value),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
