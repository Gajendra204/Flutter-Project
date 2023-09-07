import 'package:eatsome_food/pages/historyPage/HistoryPageBody.dart';
import 'package:flutter/material.dart';

import '../../DrawerBar/drawer_bar.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
          "Your Order",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 9),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 9),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'notification');
                    },
                    child: Icon(
                      Icons.notifications_none,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
        ],
      ),
      endDrawer: DrawerBar(),
      body: HistoryPageBody(),
    );
  }
}
