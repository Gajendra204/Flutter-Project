import 'package:flutter/material.dart';

class Cards_search extends StatelessWidget {
  Cards_search({Key? key}) : super(key: key);

  final List<CardData> cardDataList = [
    CardData(
      titleImage: 'images/p1.jpeg',
      titleText: 'La Pinon Pizza',
      subtitle: 'Pizza Fast food Beverages',
      price: '\$200 for one',
      rating: 4.2,
      maxImage: 'images/max.png',
      comment: 'Follow all Max safety measures to\n ensure your food is safe',
      iconImage: 'images/graph.png',
    ),
    CardData(
      titleImage: 'images/pizza2.jpeg',
      titleText: 'Pizza Hut',
      subtitle: 'Burgers Fries Snacks',
      price: '\$150 for one',
      rating: 3.8,
      maxImage: 'images/max.png',
      comment: 'Follow all Max safety measures to\n ensure your food is safe',
      iconImage: 'images/graph.png',
    ),

    CardData(
      titleImage: 'images/pizza3.jpeg',
      titleText: 'Dabbu Pizza',
      subtitle: 'North India',
      price: '\$100 for one',
      rating: 4.5,
      maxImage: 'images/max.png',
      comment: 'Follow all Max safety measures to\n ensure your food is safe',
      iconImage: 'images/graph.png',
    ),

    CardData(
      titleImage: 'images/pizza4.jpeg',
      titleText: 'Castle Grill',
      subtitle: 'Burgers Fries Snacks',
      price: '\$150 for one',
      rating: 3.8,
      maxImage: 'images/max.png',
      comment: '4300+ orders placed form here',
      iconImage: 'images/graph.png',
    ),
    CardData(
      titleImage: 'images/pizza5.jpeg',
      titleText: 'BBC',
      subtitle: 'Pizza, Burger, Fast Food',
      price: '\$150 for one',
      rating: 3.8,
      maxImage: 'images/max.png',
      comment: '2175+ orders placed from',
      iconImage: 'images/graph.png',
    ),
    CardData(
      titleImage: 'images/pizza6.jpeg',
      titleText: '9/12 Dining Restaurants',
      subtitle: 'North Indian,chines,fast..',
      price: '\$200 for one',
      rating: 3.4,
      maxImage: 'images/max.png',
      comment: '2175+ orders placed from',
      iconImage: 'images/graph.png',
    ),
    // Add more CardData instances for each card type
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: cardDataList.length,
        itemBuilder: (context, index) {
          return Expanded(child: CardWidget(cardData: cardDataList[index]));
        },
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final CardData cardData;

  CardWidget({required this.cardData});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: screenWidth < 600 ? screenWidth : 400,
                  child: GestureDetector(
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.white,
                      elevation: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              cardData.titleImage,
                              width: screenWidth < 600 ? screenWidth : 400,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      cardData.titleText,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth < 600 ? 16 : 20,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green.shade900,
                                      ),
                                      padding: EdgeInsets.all(5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            cardData.rating.toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  screenWidth < 600 ? 12 : 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: screenWidth < 600 ? 14 : 18,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      cardData.subtitle,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: screenWidth < 600 ? 12 : 14,
                                      ),
                                    ),
                                    Text(
                                      cardData.price,
                                      style: TextStyle(
                                        fontSize: screenWidth < 600 ? 12 : 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.grey.shade200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  height: 70,
                                  color: Colors.grey.shade200,
                                  child: Image.asset(
                                    cardData.maxImage,
                                    height: screenWidth < 600 ? 25 : 35,
                                    width: screenWidth < 600 ? 70 : 95,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            cardData.comment,
                                            style: TextStyle(
                                              fontSize:
                                                  screenWidth < 600 ? 10 : 13,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                          cardData.iconImage,
                                          height: screenWidth < 600 ? 35 : 45,
                                          width: screenWidth < 600 ? 25 : 35,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardData {
  final String titleImage;
  final String comment;
  final String iconImage;
  final String titleText;
  final String subtitle;
  final String price;
  final double rating;
  final String maxImage;

  CardData({
    required this.titleImage,
    required this.comment,
    required this.iconImage,
    required this.titleText,
    required this.subtitle,
    required this.price,
    required this.rating,
    required this.maxImage,
  });
}
