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
            height: 59,
            //width: 700,
            color: Colors.grey[200],
            child: ListTile(
              leading: Image.asset(
                'images/discount.png',
                scale: 9,
              ),
              title: const Text(
                "Minimum 50% OFF",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: const Text("and other amazing offers too"),
              trailing: TextButton(
                onPressed: () {},
                child: const Text("See all"),
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      //padding: EdgeInsets.all(10),
                      height: 150,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/O1.jpeg")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Om corners",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "60% OFF up to \$120",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      //padding: EdgeInsets.all(10),
                      height: 150,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/O2.jpeg")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Dhir Refresh",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "60% OFF up to \$120",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      //padding: EdgeInsets.all(10),
                      height: 150,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/O3.jpeg")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Spicy Food",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "60% OFF up to \$120",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      //padding: EdgeInsets.all(10),
                      height: 150,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/O4.jpeg")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Pizza Hut",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "60% OFF up to \$120",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      //padding: EdgeInsets.all(10),
                      height: 150,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/O1.jpeg")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Prem Bakers",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "50% OFF up to \$110",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      //padding: EdgeInsets.all(10),
                      height: 150,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/O3.jpeg")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Family Resto...",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "80% OFF up to \$200",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 10),
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
        color: Colors.white,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                dishesData.image,
                height: 65, // Decrease height for the image
                width: 62, // Decrease width for the image
              ),
            ),
            SizedBox(height: 8),
            Text(
              dishesData.title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            // Decrease spacing
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
