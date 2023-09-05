import 'package:flutter/material.dart';

class Setting_page extends StatelessWidget {
  Setting_page({Key? key}) : super(key: key);

  final List<SettingData> settingDataList = [
    SettingData(
      titleText: 'Add a Place',
      subtitle: 'In case we\'re missing something',
    ),
    SettingData(
      titleText: 'Place you have added',
      subtitle: 'See all the places ypu have added so far',
    ),

    SettingData(
      titleText: 'Edit Profile',
      subtitle: 'Change you name, description and profile photo',
    ),
    SettingData(
      titleText: 'Notification setting',
      subtitle: 'Define what alerts and notifications you want to see',
    ),
    SettingData(
      titleText: 'Account setting',
      subtitle: 'Change you name, description and profile photo',
    ),

    // Add more CardData instances for each card type
  ];
  final List<void Function(BuildContext)> onTapFunctions = [
    (BuildContext context) {
      // Handle onTap for 'HomePage'
      print('Tapped on HomePage');
    },
    (BuildContext context) {
      // Handle onTap for 'Enable Location'
      print('Tapped on Enable Location');
    },
    (BuildContext context) {
      // Handle onTap for 'HomePage'
      print('Tapped on HomePage');
    },
    (BuildContext context) {
      // Handle onTap for 'Enable Location'
      Navigator.pushNamed(context, 'notificationsetting');
    },
    (BuildContext context) {
      // Handle onTap for 'HomePage'
      Navigator.pushNamed(context, 'edit_profile');
    },

    // Define onTap functions for other items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Your Order",
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
      body: ListView.builder(
        itemCount: settingDataList.length,
        itemBuilder: (context, index) {
          return SettingWidget(
            settingData: settingDataList[index],
            onTap: (context) => onTapFunctions[index](context),
          );
        },
      ),
    );
  }
}

class SettingWidget extends StatelessWidget {
  final SettingData settingData;
  final void Function(BuildContext) onTap;

  SettingWidget({required this.settingData, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(context),
      child: ListTile(
        title: Text(
          settingData.titleText,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(settingData.subtitle),
      ),
    );
  }
}

class SettingData {
  final String titleText;
  final String subtitle;

  SettingData({
    required this.titleText,
    required this.subtitle,
  });
}
