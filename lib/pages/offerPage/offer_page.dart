import 'package:eatsome_food/pages/offerPage/offerpagebody.dart';
//import 'package:eatsome_food/pages/offerpageBody.dart';
import 'package:flutter/material.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 55.0,
              leading: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              pinned: false,
              backgroundColor: Colors.white, // Set background color to white
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Search List",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
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
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SliverPersistentHeader(
              delegate: _SearchBarDelegate(),
              pinned: true,
            ),
          ];
        },
        body: OfferBody(),
      ),
    );
  }
}

class _SearchBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 70.0;

  @override
  double get maxExtent => 70.0;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white, // Set background color to white
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey), // Add a border
          borderRadius:
              BorderRadius.circular(8.0), // Optional: Add rounded corners
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search for restaurants...",
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.arrow_back,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
