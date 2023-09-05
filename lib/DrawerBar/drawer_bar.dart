import 'package:flutter/material.dart';

class DrawerBar extends StatelessWidget {
  DrawerBar({Key? key});

  final List<DrawerData> drawerDataList = [
    DrawerData(
      title: 'HomePage',
      icon: Icon(Icons.home_outlined),
    ),
    DrawerData(
        title: 'Enable Location', icon: Icon(Icons.location_on_outlined)),
    DrawerData(
        title: 'Add Location', icon: Icon(Icons.add_location_alt_outlined)),
    DrawerData(title: 'Authentication', icon: Icon(Icons.key_outlined)),
    DrawerData(title: 'Coupons', icon: Icon(Icons.local_offer_outlined)),
    DrawerData(title: 'Offers', icon: Icon(Icons.percent)),
    DrawerData(title: 'Wallet', icon: Icon(Icons.wallet_outlined)),
    DrawerData(
        title: 'Notification Setting',
        icon: Icon(Icons.notifications_off_outlined)),
    DrawerData(title: 'Notification', icon: Icon(Icons.notifications_outlined)),
    DrawerData(title: 'Setting', icon: Icon(Icons.settings)),
    DrawerData(title: 'Search List', icon: Icon(Icons.search)),
    DrawerData(title: 'Store', icon: Icon(Icons.store)),
    DrawerData(title: 'Cart', icon: Icon(Icons.shopping_bag)),
    DrawerData(title: 'Checkout', icon: Icon(Icons.shopping_cart_outlined)),
    DrawerData(title: 'Payment', icon: Icon(Icons.payment_outlined)),
    DrawerData(title: 'Add Card', icon: Icon(Icons.credit_card)),
    DrawerData(title: 'Personal Info', icon: Icon(Icons.person_outline)),
    DrawerData(title: 'Edit Profile', icon: Icon(Icons.edit_outlined)),
    DrawerData(title: 'My Address', icon: Icon(Icons.map_outlined)),
    DrawerData(title: 'Your Order', icon: Icon(Icons.shopping_bag_outlined)),
    DrawerData(title: 'Order Confirm', icon: Icon(Icons.celebration)),
    DrawerData(title: 'Order Details', icon: Icon(Icons.menu_rounded)),
    DrawerData(title: 'Support', icon: Icon(Icons.question_mark_rounded)),

    // Add more DrawerData instances for each item
  ];
  final List<void Function(BuildContext)> onTapFunctions = [
    (BuildContext context) {
      // Handle onTap for 'HomePage'
      Navigator.pushNamed(context, 'homeScreen');
    },
    (BuildContext context) {
      // Handle onTap for 'Enable Location'
      print('Tapped on Enable Location');
    },
    (BuildContext context) {
      // Handle onTap for 'HomePage'
      Navigator.pushNamed(context, 'mapScreen');
    },
    (BuildContext context) {
      // Handle onTap for 'Enable Location'
      Navigator.pushNamed(context, 'signup');
    },
    (BuildContext context) {
      // Handle onTap for 'HomePage'
      Navigator.pushNamed(context, 'couponpage');
    },
    (BuildContext) {
      // Handle onTap for 'Enable Location'
      print('Tapped on Enable Location');
    },
    (BuildContext context) {
      // Handle onTap for 'HomePage'
      Navigator.pushNamed(context, 'wallet');
    },
    (BuildContext context) {
      // Handle onTap for 'Enable Location'
      Navigator.pushNamed(context, 'notificationsetting');
    },
    (BuildContext context) {
      // Handle onTap for 'HomePage'
      Navigator.pushNamed(context, 'notification');
    },
    (BuildContext context) {
      // Handle onTap for 'Enable Location'
      Navigator.pushNamed(context, 'setting');
    },
    (BuildContext) {
      // Handle onTap for 'HomePage'
      print('Tapped on HomePage');
    },
    (BuildContext) {
      // Handle onTap for 'Enable Location'
      print('Tapped on Enable Location');
    },
    (BuildContext) {
      // Handle onTap for 'HomePage'
      print('Tapped on HomePage');
    },
    (BuildContext context) {
      // Handle onTap for 'Enable Location'
    },
    (BuildContext context) {
      // Handle onTap for 'HomePage'
      Navigator.pushNamed(context, 'payment');
    },
    (BuildContext context) {
      // Handle onTap for 'Enable Location'
      Navigator.pushNamed(context, 'addcard');
    },
    (BuildContext) {
      // Handle onTap for 'HomePage'
      print('Tapped on HomePage');
    },
    (BuildContext context) {
      // Handle onTap for 'Enable Location'
      Navigator.pushNamed(context, 'edit_profile');
    },
    (BuildContext context) {
      // Handle onTap for 'HomePage'
    },
    (BuildContext) {
      // Handle onTap for 'Enable Location'
      print('Tapped on Enable Location');
    },
    (BuildContext context) {
      // Handle onTap for 'HomePage'
      Navigator.pushNamed(context, 'confirmorder');
    },
    (BuildContext context) {
      // Handle onTap for 'Enable Location'
    },
    (BuildContext) {
      // Handle onTap for 'HomePage'
      print('Tapped on HomePage');
    },

    // Define onTap functions for other items as needed
  ];

  @override
  Widget build(BuildContext context) {
    double halfScreenWidth = MediaQuery.of(context).size.width / 2;
    return Drawer(
      width: halfScreenWidth,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(right: 15, left: 15, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.redAccent,
            ),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/h1.jpeg'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hi Your Name',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          Text(
                            '+91 9024724473',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          Text(
                            'Version 1.32',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Add some spacing between the upper column and the list
          Expanded(
            child: ListView.builder(
              itemCount: drawerDataList.length,
              itemBuilder: (context, index) {
                return DrawerWidget(
                  drawerData: drawerDataList[index],
                  onTap: (context) => onTapFunctions[index](context),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerData {
  final String title;
  final Icon icon;

  DrawerData({
    required this.title,
    required this.icon,
  });
}

class DrawerWidget extends StatefulWidget {
  final DrawerData drawerData;
  final void Function(BuildContext) onTap;

  DrawerWidget({required this.drawerData, required this.onTap});

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        // Use GestureDetector instead of InkWell
        onTap: () => widget.onTap(context),
        child: ListTile(
          title: Text(
            widget.drawerData.title,
            style: TextStyle(
              color: isHovered ? Colors.grey : Colors.black,
            ),
          ),
          leading: widget.drawerData.icon,
        ),
      ),
    );
  }
}
