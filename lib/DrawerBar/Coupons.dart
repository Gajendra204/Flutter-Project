import 'package:flutter/material.dart';

class Coupons_page extends StatelessWidget {
  Coupons_page({Key? key}) : super(key: key);

  final List<CardData> cardDataList = [
    CardData(
      titleImage: 'images/visa1.png',
      titleText: 'Get 50% OFF up to \$100',
      subtitle: 'Valid on total value of items worth \$159 or more.',
      price: 'View Details',
      couponCode: 'MAXSAFETY',
      comment: 'You will save \$100 with this code',
      apply: 'Apply',
    ),
    CardData(
      titleImage: 'images/visa1.png',
      titleText: '50% OFF up to \$100 and \$30 Paytm \ncashback using Paytm',
      subtitle: 'Valid on total value of items worth \$159 or more.',
      price: 'View Details',
      couponCode: 'ZOMPAYTM',
      comment: 'You will save \$100 & get extra cashback with this code',
      apply: 'Apply',
    ),

    CardData(
      titleImage: 'images/visa2.png',
      titleText: 'Get 60% OFF up to \$140',
      subtitle: 'Valid on total value of items worth \$159 or more.',
      price: 'View Details',
      couponCode: 'SIMPPARTY',
      comment: 'You will save \$140 with this code',
      apply: 'Apply',
    ),

    // Add more CardData instances for each card type
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Your Order",
          style: TextStyle(color: Colors.black),
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
                    size: 35,
                    color: Colors.black,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 35,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  blurRadius: 1,
                )
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(3),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 12, right: 50, bottom: 8),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  border: OutlineInputBorder(),
                  hintText: 'Enter Coupon Code',
                  hintStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cardDataList.length,
              itemBuilder: (context, index) {
                return CardWidget(cardData: cardDataList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final CardData cardData;

  CardWidget({required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {},
        child: Card(
          elevation: 0, // Remove card elevation to prevent shadow overlap
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      cardData.titleImage,
                      width: 100,
                      fit: BoxFit
                          .fitWidth, // Use fitWidth to make the image fit the width
                      height: 60,
                      // Adjust the image height as needed
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  cardData.titleText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  cardData.subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  cardData.price,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Text(
                        cardData.couponCode,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(cardData.apply),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  cardData.comment,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardData {
  final String titleImage;
  final String comment;
  final String apply;
  final String titleText;
  final String subtitle;
  final String price;
  final String couponCode;

  CardData({
    required this.titleImage,
    required this.comment,
    required this.apply,
    required this.titleText,
    required this.subtitle,
    required this.price,
    required this.couponCode,
  });
}
