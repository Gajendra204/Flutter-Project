import 'package:eatsome_food/pages/offerPage/Components/cards_container.dart';
import 'package:flutter/material.dart';

import 'Components/middle_container.dart';
import 'Components/top_container.dart';

class OfferBody extends StatelessWidget {
  const OfferBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 450, child: Top_container()),
        Container(height: 190, child: Middle_container()),
        Container(height: 2200, child: Cards_container()),
      ],
    );
  }
}
