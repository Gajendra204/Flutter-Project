import 'package:flutter/material.dart';

class Top_container extends StatelessWidget {
  Top_container({super.key});

  final List<DishesData> dishesDataList = [
    DishesData(
      image: 'images/img9.png',
      title: 'Sweets',
      duration: '33 mins',
    ),
    DishesData(
      image: 'images/img10.png',
      title: 'Samosa',
      duration: '32 mins',
    ),
    DishesData(
      image: 'images/img11.png',
      title: 'Pizza',
      duration: '30 mins',
    ),
    DishesData(
      image: 'images/img12.png',
      title: 'Noddles',
      duration: '23 mins',
    ),

    // Add more CardData instances for each card type
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 65,
            //width: 700,
            color: Colors.grey[200],
            child: Center(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.percent_outlined,
                      size: 37,
                    ),
                    title: const Text(
                      "Minimum 50% OFF",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: const Text("and other amazing offers too"),
                    trailing: TextButton(
                      onPressed: () {},
                      child: const Text("See all"),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[200],
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/O1.jpeg")),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/O2.jpeg")),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/O3.jpeg")),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/O4.jpeg")),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  height: 100,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/O1.jpeg")),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/O3.jpeg")),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Check offers on top dishes ",
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
              mainAxisSpacing: 15,
            ),
          ),
        ],
      ),
    );
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
        width: 200, // Increase width to provide more space
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              dishesData.image,
              height: 62, // Decrease height for the image
              width: 62, // Decrease width for the image
            ),
            SizedBox(height: 8),
            Text(
              dishesData.title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 2), // Decrease spacing
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
