import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  Brands({super.key});

  final List<DishesData> dishesDataList = [
    DishesData(
      image: 'images/img1.png',
      title: 'Subwey',
      duration: '33 mins',
    ),
    DishesData(
      image: 'images/img2.png',
      title: 'McDonae',
      duration: '32 mins',
    ),
    DishesData(
      image: 'images/img3.png',
      title: 'Dominos',
      duration: '30 mins',
    ),
    DishesData(
      image: 'images/img4.png',
      title: 'KFC',
      duration: '23 mins',
    ),
    DishesData(
      image: 'images/img5.png',
      title: 'Burger...',
      duration: '28 mins',
    ),
    DishesData(
      image: 'images/img14.png',
      title: 'Baba Ch..',
      duration: '24 mins',
    ),
    DishesData(
      image: 'images/img6.png',
      title: 'Piza Lut',
      duration: '37 mins',
    ),
    DishesData(
      image: 'images/img7.png',
      title: 'Kwaliti...',
      duration: '17 mins',
    ),

    // Add more CardData instances for each card type
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Top brands for you",
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
            return DishesWidget(dishesData: dishesDataList[index]);
          },
          itemCount: dishesDataList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 25,
            childAspectRatio: 1.0,
          ),
        ),
      ],
    );
  }
}

class DishesWidget extends StatelessWidget {
  final DishesData dishesData;
  DishesWidget({required this.dishesData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'pizzasearch');
      },
      child: Container(
        height: 90,
        // padding: EdgeInsets.only(bottom: 5), // Add padding to the bottom
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                dishesData.image,
                height: 62, // Adjust height to fit the image
                width: 62,
                fit: BoxFit.cover, // Adjust width to fit the image
              ),
            ),
            SizedBox(height: 8), // Increase spacing
            Text(
              dishesData.title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4), // Increase spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_time,
                  size: 12,
                  color: Colors.green,
                ),
                SizedBox(width: 2),
                Text(
                  dishesData.duration,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DishesData {
  final String image;
  final String title;
  final String duration;

  DishesData({
    required this.image,
    required this.title,
    required this.duration,
  });
}
