import 'package:eatsome_food/pages/offerPage/offerFlexibleappBar.dart';
import 'package:eatsome_food/pages/offerPage/offerPageAppBar.dart';
import 'package:eatsome_food/pages/offerPage/offerpagebody.dart';
//import 'package:eatsome_food/pages/offerpageBody.dart';
import 'package:flutter/material.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: OfferPageAppBar(),
            pinned: true,
            expandedHeight: 130.0,
            flexibleSpace: FlexibleSpaceBar(
              background: OfferPageFlexiableAppBar(),
            ),
          ),
          SliverToBoxAdapter(child: (OfferBody())),
        ]),
      ),
    );
  }
}
