import 'package:flutter/material.dart';

class Cart_Top extends StatefulWidget {
  const Cart_Top({super.key});

  @override
  State<Cart_Top> createState() => _Cart_TopState();
}

class _Cart_TopState extends State<Cart_Top> {
  int quantity1 = 1; // Declare the quantity variables for each row
  int quantity2 = 1;

  void _decreaseQuantity(int row) {
    setState(() {
      if (row == 1 && quantity1 > 1) {
        quantity1--;
      } else if (row == 2 && quantity2 > 1) {
        quantity2--;
      }
    });
  }

  void _increaseQuantity(int row) {
    setState(() {
      if (row == 1) {
        quantity1++;
      } else if (row == 2) {
        quantity2++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 5,
        child: Container(
          color: Colors.white60,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(8),
          // color: Colors.purple,
          width: 500,
          height: 250,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 25,
                    child: Image.asset(
                      'assets/cart.jpeg',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 18,
                        child: Text(
                          'Matter Paner',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Text(
                        '\$150',
                        style: TextStyle(
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        'Pan, Personal',
                        style: TextStyle(
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.red),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _decreaseQuantity(1);
                            },
                            child: Text(
                              '--',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.red.shade600,
                              ),
                            ),
                          ),
                          Text(
                            quantity1.toString(), // Display the quantity
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _increaseQuantity(1);
                            },
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.red.shade600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    width: 25,
                    child: Image.asset(
                      'assets/cart.jpeg',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 18,
                        child: Text(
                          'Zeera Rice',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Text(
                        '\$150',
                        style: TextStyle(
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        'Pan, Personal',
                        style: TextStyle(
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.red),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _decreaseQuantity(2);
                            },
                            child: Text(
                              '--',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.red.shade600,
                              ),
                            ),
                          ),
                          Text(
                            quantity2.toString(), // Display the quantity
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _increaseQuantity(2);
                            },
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.red.shade600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    '+ ',
                    style: TextStyle(color: Colors.red.shade500, fontSize: 20),
                  ),
                  Text(
                    '  Add more items',
                    style: TextStyle(color: Colors.red.shade500, fontSize: 16),
                  ),
                ],
              ),
              Divider(
                height: 50,
                color: Colors.grey.shade400,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                children: [
                  Icon(Icons.ac_unit),
                  Text(
                    '  Do you want to add cooking instructions?',
                    style: TextStyle(color: Colors.grey.shade600),
                  )
                ],
              ),
              // Mid()
            ],
          ),
        ),
      ),
    );
  }
}
