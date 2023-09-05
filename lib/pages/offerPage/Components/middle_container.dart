import 'package:flutter/material.dart';

class Middle_container extends StatelessWidget {
  Middle_container({super.key});

  final List<ItemsData> itemsDataList = [
    ItemsData(
      color1: Colors.red,
      color2: Colors.red,
      title1: 'Deals For',
      title2: 'One',
      offertitle: "To 60% OFF",
    ),
    ItemsData(
      color1: Colors.yellow,
      color2: Colors.yellow,
      title1: 'Unlimited',
      title2: 'Flat Deal',
      offertitle: "Big orders",
    ),
    ItemsData(
      color1: Colors.green,
      color2: Colors.green,
      title1: 'Fastest',
      title2: 'Deliveries',
      offertitle: "See offers",
    ),

    // Add more CardData instances for each card type
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Eat what makes you happy",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ItemsWidget(itemsData: itemsDataList[index]);
            },
            itemCount: itemsDataList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemsWidget extends StatelessWidget {
  final ItemsData itemsData;
  ItemsWidget({required this.itemsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7, right: 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    itemsData.color1,
                    itemsData.color2,

                    //add more colors for gradient
                  ],
                  begin: Alignment.topCenter, //begin of the gradient color
                  end: Alignment.bottomCenter, //end of the gradient color
                  stops: [0.3, 0.4] //stops for individual color
                  //set the stops number equal to numbers of color
                  ),

              borderRadius: BorderRadius.circular(15), //border corner radius
            ),
            padding: EdgeInsets.all(10),
            // width: 130,
            // height: 130,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 8, left: 8, bottom: 8),
                child: Column(children: [
                  Row(
                    children: [
                      Text.rich(TextSpan(
                        text: itemsData.title1,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ],
                  ),
                  Row(children: [
                    Text(
                      itemsData.title2,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ]),
                  Row(children: [
                    Text(
                      itemsData.offertitle,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                  ]),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemsData {
  final Color color1;
  final Color color2;
  final String title1;
  final String title2;
  final String offertitle;

  ItemsData(
      {required this.color1,
      required this.color2,
      required this.title1,
      required this.title2,
      required this.offertitle});
}
