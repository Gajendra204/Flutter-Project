import 'package:flutter/material.dart';

class Cards_container extends StatelessWidget {
  Cards_container({Key? key}) : super(key: key);

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
      titleImage: 'images/p2.jpeg',
      titleText: 'Burger Delight',
      subtitle: 'Burgers Fries Snacks',
      price: '\$150 for one',
      rating: 3.8,
      maxImage: 'images/max.png',
      comment: 'Follow all Max safety measures to\n ensure your food is safe',
      iconImage: 'images/graph.png',
    ),

    CardData(
      titleImage: 'images/p3.jpeg',
      titleText: 'Sharma Sweets And Fast Food',
      subtitle: 'North India',
      price: '\$100 for one',
      rating: 4.5,
      maxImage: 'images/max.png',
      comment: 'Follow all Max safety measures to\n ensure your food is safe',
      iconImage: 'images/graph.png',
    ),

    CardData(
      titleImage: 'images/p4.jpeg',
      titleText: 'Burger Delight',
      subtitle: 'Burgers Fries Snacks',
      price: '\$150 for one',
      rating: 3.8,
      maxImage: 'images/max.png',
      comment: '4300+ orders placed form here',
      iconImage: 'images/graph.png',
    ),
    CardData(
      titleImage: 'images/p5.jpeg',
      titleText: 'Grill Masters',
      subtitle: 'Pizza, Burger, Fast Food',
      price: '\$150 for one',
      rating: 3.8,
      maxImage: 'images/max.png',
      comment: '2175+ orders placed from',
      iconImage: 'images/graph.png',
    ),
    // Add more CardData instances for each card type
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cardDataList.length,
      itemBuilder: (context, index) {
        return CardWidget(cardData: cardDataList[index]);
      },
    );
  }
}

class CardWidget extends StatelessWidget {
  final CardData cardData;

  CardWidget({required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: Colors.white,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      color: Colors.white,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: 400,
                                // height: 400,
                                // color: Colors.white,
                                child: GestureDetector(
                                    onTap: () {},
                                    child: SingleChildScrollView(
                                      child: Card(
                                        // margin: EdgeInsets.all(4),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              10.0), //<-- SEE HERE
                                        ),
                                        color: Colors.white,
                                        elevation: 15,
                                        //margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image.asset(
                                                  cardData.titleImage,
                                                  width: 400,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                padding: EdgeInsets.all(10),
                                                margin: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(cardData.titleText,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 20)),

                                                        Container(
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color: Colors
                                                                  .green
                                                                  .shade900),
                                                          height: 25,
                                                          width: 50,
                                                          //color: Colors.green.shade700,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              // Add spacing between icon and text
                                                              Text(
                                                                cardData.rating
                                                                    .toString(),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white, // Set the color of the text
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .white,
                                                                size:
                                                                    18, // Set the color of the icon
                                                              ),
                                                            ],
                                                          ),
                                                        ) //rating container
                                                      ],
                                                    ),
                                                    SizedBox(height: 8),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(cardData.subtitle),
                                                        // Spacer(),
                                                        Text(
                                                          cardData.price,
                                                          style: TextStyle(
                                                              fontSize: 14),
                                                        ),
                                                      ],
                                                    ),
                                                    // ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),

                                                    //Subtitle and price
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                color: Colors.grey.shade200,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(8),
                                                      height: 70,
                                                      color:
                                                          Colors.grey.shade200,
                                                      child: Image.asset(
                                                        cardData.maxImage,
                                                        height: 35,
                                                        width: 95,
                                                      ),
                                                    ),
                                                    Column(children: [
                                                      Row(
                                                          // crossAxisAlignment:
                                                          //     CrossAxisAlignment.start,
                                                          // mainAxisAlignment:
                                                          //     MainAxisAlignment
                                                          //         .center,
                                                          children: [
                                                            Text(
                                                              cardData.comment,
                                                              style: TextStyle(
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 15,
                                                            ),
                                                            Image.asset(
                                                              cardData
                                                                  .iconImage,
                                                              height: 45,
                                                              width: 35,
                                                            ),
                                                          ])
                                                    ]),
                                                  ],
                                                ),
                                              )
                                            ]),
                                      ),
                                    ))),
                          ],
                        ),
                      ))
                ])),
      ],
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
