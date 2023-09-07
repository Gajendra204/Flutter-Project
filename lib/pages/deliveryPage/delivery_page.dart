import 'package:eatsome_food/DrawerBar/drawer_bar.dart';
import 'package:eatsome_food/pages/deliveryPage/myAppBar.dart';
import 'package:flutter/material.dart';

import 'deliverypagebody.dart';

// ignore: must_be_immutable
class DeliveryPage extends StatelessWidget {
  DeliveryPage({Key? key}) : super(key: key);
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  backgroundColor: Colors.redAccent,
                  title: MyAppBar(),
                  actions: [
                    Container(
                      padding: EdgeInsets.only(right: 9),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_outlined,
                          size: 28,
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ],
                  pinned: true,
                  floating: true,
                  expandedHeight: 50.0,
                  automaticallyImplyLeading: false, // Hide the back button
                ),
              ),
            ];
          },
          body: CustomScrollView(
            shrinkWrap: true,
            controller: scrollController,
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: const DeliveryPageBody(),
              )
            ],
          ),
        ),
        endDrawer: DrawerBar(),
      ),
    );
  }
}
