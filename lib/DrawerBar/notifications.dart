import 'package:flutter/material.dart';

class Notification_Page extends StatelessWidget {
  Notification_Page({Key? key});
  final List<NotificationData> notificationDataList = [
    NotificationData(
      title: 'Order Delivered',
      imagePath: 'images/logo.png',
      subtitle1:
          'Your order from Meshi Vaishnu Dhaba has been delivered. Feel free to tip the delivery partner.',
      subtitle2: '2 days ago',
    ),
    NotificationData(
      title: 'Order is on its way!',
      imagePath: 'images/logo.png',
      subtitle1: 'It should reach your locaton shortly. Hands are\nsanitized',
      subtitle2: '3 days ago',
    ),
    NotificationData(
      title: 'Your order was delivered at your door',
      imagePath: 'images/logo.png',
      subtitle1:
          'As requested by you, your order has been\nKept at door. Please rate your delivery experience',
      subtitle2: '3 days ago',
    ),
    NotificationData(
      title: 'Knock! Knock!',
      imagePath: 'images/logo.png',
      subtitle1:
          'Arjun reached your location in just 16 mins.\nThey should be at your doorstep shortly. Feel free to tip them.',
      subtitle2: '15 days ago',
    ),
    NotificationData(
      title: 'Order is on its way!',
      imagePath: 'images/logo.png',
      subtitle1:
          'It should reach your location in 20 mins. Hands are sanitized',
      subtitle2: '15 days ago',
    ),
    NotificationData(
      title: 'Arjun is your delivery partner',
      imagePath: 'images/logo.png',
      subtitle1: 'They are on their way to pick your order.',
      subtitle2: '1 month ago',
    ),
    NotificationData(
      title: 'Arjun is your delivery partner',
      imagePath: 'images/logo.png',
      subtitle1: 'They are on their way to pick your order.',
      subtitle2: '1 month ago',
    ),
    NotificationData(
      title: 'Arjun is your delivery partner',
      imagePath: 'images/logo.png',
      subtitle1: 'They are on their way to pick your order.',
      subtitle2: '1 month ago',
    ),
    NotificationData(
      title: 'Arjun is your delivery partner',
      imagePath: 'images/logo.png',
      subtitle1: 'They are on their way to pick your order.',
      subtitle2: '1 month ago',
    ),
    NotificationData(
      title: 'Arjun is your delivery partner',
      imagePath: 'images/logo.png',
      subtitle1: 'They are on their way to pick your order.',
      subtitle2: '1 month ago',
    ),
    NotificationData(
      title: 'Arjun is your delivery partner',
      imagePath: 'images/logo.png',
      subtitle1: 'They are on their way to pick your order.',
      subtitle2: '1 month ago',
    ),
    NotificationData(
      title: 'Arjun is your delivery partner',
      imagePath: 'images/logo.png',
      subtitle1: 'They are on their way to pick your order.',
      subtitle2: '1 month ago',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            title: Text(
              "Notification",
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
          body: ListView.builder(
            itemCount: notificationDataList.length * 2 -
                1, // Double the item count to include dividers
            shrinkWrap: true, // Add this to prevent scrolling issues
            itemBuilder: (context, index) {
              if (index.isOdd) {
                // Odd indices are dividers
                return Divider(
                  color: Colors.grey, // Set the color you want for the divider
                  thickness: 1, // Set the thickness of the divider
                  height:
                      0, // Set the height of the divider, you can adjust it as needed
                );
              } else {
                // Even indices are items from notificationDataList
                final notificationIndex = index ~/ 2;
                return ListTile(
                  leading: Image.asset(
                      notificationDataList[notificationIndex].imagePath),
                  title: Container(
                    margin: EdgeInsets.only(left: 7),
                    child: Text(
                      notificationDataList[notificationIndex].title,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(notificationDataList[notificationIndex].subtitle1),
                        Text(notificationDataList[notificationIndex].subtitle2),
                      ],
                    ),
                  ),
                );
              }
            },
          )),
    );
  }
}

class NotificationData {
  final String title;
  final String imagePath;
  final String subtitle1;
  final String subtitle2;

  NotificationData({
    required this.title,
    required this.imagePath,
    required this.subtitle1,
    required this.subtitle2,
  });
}
