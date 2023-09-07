import 'package:flutter/material.dart';

class Dishes extends StatelessWidget {
  Dishes({super.key});

  final List<DishesData> dishesDataList = [
    DishesData(
      image: 'images/img9.png',
      title: 'Sweets',
    ),
    DishesData(
      image: 'images/img10.png',
      title: 'Burger',
    ),
    DishesData(
      image: 'images/img11.png',
      title: 'Pizza',
    ),
    DishesData(
      image: 'images/img12.png',
      title: 'Noodles',
    ),
    DishesData(
      image: 'images/img13.png',
      title: 'Rolls',
    ),
    DishesData(
      image: 'images/img14.png',
      title: 'Samosa',
    ),
    DishesData(
      image: 'images/img15.png',
      title: 'Healthy',
    ),
    DishesData(
      image: 'images/img16.png',
      title: 'Fries',
    ),

    // Add more CardData instances for each card type
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
          return DishesWidget(dishesData: dishesDataList[index]);
        },
        itemCount: dishesDataList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      )
    ]);
  }
}

class DishesWidget extends StatelessWidget {
  final DishesData dishesData;
  DishesWidget({required this.dishesData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        //width: 90,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                dishesData.image,
                height: 55,
                width: 55,
              ),
            ),
            SizedBox(height: 8),
            Text(
              dishesData.title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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

  DishesData({required this.image, required this.title});
}
