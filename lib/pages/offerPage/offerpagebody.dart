import 'package:flutter/material.dart';

import 'Components/middle_container.dart';
import 'Components/top_container.dart';

class OfferBody extends StatelessWidget {
  const OfferBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Top_container(),
        Middle_container(),
        //Cards(),
      ],
    );
  }
}
