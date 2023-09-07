import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_components/cards.dart';
import 'body_components/middle_component.dart';
import 'body_components/top_component.dart';
import 'myflexibleappbar.dart';

class DeliveryPageBody extends StatelessWidget {
  const DeliveryPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 190, child: MyFlexibleAppBar()),
        Container(height: 290, child: Brands()),
        Container(height: 280, child: Dishes()),
        Container(height: 2200, width: 500, child: Cards()),
      ],
    );
  }
}
