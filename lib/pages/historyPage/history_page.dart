import 'package:eatsome_food/pages/historyPage/HistoryPageBody.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
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
      body: HistoryPageBody(),
    );
  }
}
