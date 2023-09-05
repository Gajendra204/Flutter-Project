import 'package:flutter/material.dart';

class HistoryPageBody extends StatelessWidget {
  const HistoryPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(color: Color.fromARGB(255, 0, 0, 0), blurRadius: 2)
              ]),
          child: Padding(
            padding: EdgeInsets.all(3),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 19, right: 50, bottom: 8),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                border: OutlineInputBorder(),
                hintText: 'Restaurant name or a dish...',
                hintStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(color: Color.fromARGB(255, 0, 0, 0), blurRadius: 3)
              ]),
          margin: EdgeInsets.all(20),
          height: 350,
          width: 400,
          //color: Colors.redAccent,
          alignment: Alignment.topRight,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(13),
                height: 110,
                width: 400,
                color: Colors.grey.shade100,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/h1.jpeg")),
                    Container(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.,
                            children: [
                              Text(
                                "Meshi Vaishnu Dhaba",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              // Container(
                              //padding: EdgeInsets.all(1),
                              // margin: EdgeInsets.only(left: 17),
                              // DecoratedBox(
                              //   decoration:
                              //       const BoxDecoration(color: Colors.grey),
                              //   child: Text(
                              //     "Deliverd",
                              //     style: TextStyle(
                              //       color: Colors.black,
                              //       fontSize: 10,
                              //     ),
                              //   ),
                              // )
                            ],
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                // margin: EdgeInsets.only(right: 80),
                                child: Text(
                                  "Indistrail Area, Ludhiana",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "25 mins",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                                Text("View Menu",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 17,
                                    )),
                                Icon(
                                  Icons.arrow_right,
                                  color: Colors.red,
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.red,
                thickness: 1,
                height: 1,
              ),
              Container(
                height: 105,
                width: 400,
                color: Colors.white,
                padding: EdgeInsets.only(top: 20, right: 20, left: 15),
                child: Column(
                  children: [
                    Container(
                      // padding: EdgeInsets.all(4),
                      // margin: EdgeInsets.only(left: 10, top: 15),
                      child: Row(
                        children: [
                          Image.asset(
                            "images/h4.jpeg",
                            height: 20,
                            width: 20,
                          ),
                          Text.rich(TextSpan(
                              text: '  1x',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '  Plain Rice',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ])),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      //margin: EdgeInsets.only(left: 14, top: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            "images/h4.jpeg",
                            height: 20,
                            width: 20,
                          ),
                          Text.rich(TextSpan(
                              text: '  1x',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '  Mushroom Matar',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: '  Half',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )
                              ])),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.red,
                thickness: 1,
                height: 1,
              ),
              Container(
                height: 64,
                color: Colors.white,
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("04 Mar 2023 at 2.22PM"),
                    Text(
                      "\$101.00",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.red,
                thickness: 1,
                height: 1,
              ),
              Container(
                height: 64,
                color: Colors.white,
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your Rated"),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        // <-- Icon
                        Icons.history_outlined,
                        size: 24.0,
                      ),
                      label: Text('Reorder'), // <-- Text
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(color: Color.fromARGB(255, 0, 0, 0), blurRadius: 3)
              ]),
          margin: EdgeInsets.all(20),
          height: 350,
          width: 400,
          //color: Colors.redAccent,
          alignment: Alignment.topRight,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(13),
                height: 110,
                width: 400,
                color: Colors.grey.shade100,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/h2.jpeg")),
                    Container(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.,
                            children: [
                              Text(
                                "Basant Restaurant",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              // Container(
                              //padding: EdgeInsets.all(1),
                              // margin: EdgeInsets.only(left: 17),
                              // DecoratedBox(
                              //   decoration:
                              //       const BoxDecoration(color: Colors.grey),
                              //   child: Text(
                              //     "Deliverd",
                              //     style: TextStyle(
                              //       color: Colors.black,
                              //       fontSize: 10,
                              //     ),
                              //   ),
                              // )
                            ],
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                // margin: EdgeInsets.only(right: 80),
                                child: Text(
                                  "Indistrail Area, Ludhiana",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "25 mins",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                                Text("View Menu",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 17,
                                    )),
                                Icon(
                                  Icons.arrow_right,
                                  color: Colors.red,
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.red,
                thickness: 1,
                height: 1,
              ),
              Container(
                height: 80,
                width: 400,
                color: Colors.white,
                // padding: EdgeInsets.only(top: 20, left: 6),
                padding: EdgeInsets.only(top: 28, left: 14, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      // padding: EdgeInsets.all(4),
                      // margin: EdgeInsets.only(left: 10, top: 15),
                      child: Row(
                        children: [
                          Image.asset(
                            "images/h4.jpeg",
                            height: 20,
                            width: 20,
                          ),
                          Text.rich(TextSpan(
                              text: '  1x',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '  Basant Special Pizza with Coke',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ])),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.red,
                thickness: 1,
                height: 1,
              ),
              Container(
                height: 90,
                color: Colors.white,
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("11 Jan 2023 at 4.22PM"),
                    Text(
                      "\$230.00",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.red,
                thickness: 1,
                height: 1,
              ),
              Container(
                height: 64,
                color: Colors.white,
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your Rated"),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        // <-- Icon
                        Icons.history_outlined,
                        size: 24.0,
                      ),
                      label: Text('Reorder'), // <-- Text
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(color: Color.fromARGB(255, 0, 0, 0), blurRadius: 3)
              ]),
          margin: EdgeInsets.all(20),
          height: 350,
          width: 400,
          //color: Colors.redAccent,
          alignment: Alignment.topRight,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(13),
                height: 110,
                width: 400,
                color: Colors.grey.shade100,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/h3.jpeg")),
                    Container(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.,
                            children: [
                              Text(
                                "Natural 2",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              // Container(
                              //padding: EdgeInsets.all(1),
                              // margin: EdgeInsets.only(left: 17),
                              // DecoratedBox(
                              //   decoration:
                              //       const BoxDecoration(color: Colors.grey),
                              //   child: Text(
                              //     "Deliverd",
                              //     style: TextStyle(
                              //       color: Colors.black,
                              //       fontSize: 10,
                              //     ),
                              //   ),
                              // )
                            ],
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                // margin: EdgeInsets.only(right: 80),
                                child: Text(
                                  "Civil Lines, Ludhiana",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "56 mins",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                                Text("View Menu",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 17,
                                    )),
                                Icon(
                                  Icons.arrow_right,
                                  color: Colors.red,
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.red,
                thickness: 1,
                height: 1,
              ),
              Container(
                height: 70,
                width: 400,
                color: Colors.white,
                padding: EdgeInsets.only(top: 20, right: 20, left: 15),
                child: Column(
                  children: [
                    Container(
                      // padding: EdgeInsets.all(4),
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            "images/h4.jpeg",
                            height: 20,
                            width: 20,
                          ),
                          Text.rich(TextSpan(
                              text: '  1x',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: ' Natural Special Burger',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ])),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.red,
                thickness: 1,
                height: 1,
              ),
              Container(
                height: 75,
                color: Colors.white,
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("15 jan 2023 at 2.25PM"),
                    Text(
                      "\$101.00",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.red,
                thickness: 1,
                height: 1,
              ),
              Container(
                height: 70,
                color: Colors.white,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your Rated"),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        // <-- Icon
                        Icons.history_outlined,
                        size: 24.0,
                      ),
                      label: Text('Reorder'), // <-- Text
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
