import 'package:flutter/material.dart';

import 'deliverypagebody.dart';
import 'myAppBar.dart';
import 'myflexibleappbar.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.redAccent,
              title: MyAppBar(),
              pinned: true,
              expandedHeight: 190.0,
              flexibleSpace: FlexibleSpaceBar(
                background: MyFlexibleAppBar(),
              ),
              automaticallyImplyLeading: false, // Hide the back button
            ),
            SliverToBoxAdapter(
              child: DeliveryBody(),
            )
          ],
        ),
      ),
    );
  }
}
