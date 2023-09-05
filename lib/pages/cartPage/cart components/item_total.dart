import 'package:flutter/material.dart';

class Total extends StatefulWidget {
  const Total({super.key});

  @override
  _TotalState createState() => _TotalState();
}

class _TotalState extends State<Total> {
  bool isExpanded = false;
  //bool _isPressed = false;
  int _selectedButtonIndex = -1;
  bool _isChecked = false;

  void _toggleCheck() {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  void _toggleButtonState(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 4,
          child: Container(
            // height: 200,
            child: Column(
              children: [
                Container(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 9,
                    right: 9,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Item Total',
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text('\$320.00')
                    ],
                  ),
                )),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 9,
                      right: 9,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Taxes & Charges',
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          child: Icon(
                            isExpanded
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: 40,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Display additional content if expanded
                if (isExpanded)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Delivery charge for 5 km'),
                            Text('free'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Taxes'),
                            Text('\$50'),
                          ],
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Grand Total',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        '\$500.30',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Card(
          elevation: 4,
          child: Container(
            //height: 180,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Please tip your delivery parter',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit.\nQuod, aspernatur modi quasi laboriosam veritatis\nperferendis.',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Red_Button(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Card(
          child: Container(
              //height: 180,
              //width: 500,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7, top: 10),
                child: Row(
                  children: [
                    Text(
                      'This order is relative to a COVID-19\nemergency',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      onTap: _toggleCheck,
                      child: Container(
                        // width: 40,
                        // height: 30,
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: _isChecked ? Colors.blue : Colors.transparent,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 5,
                            ),
                            SizedBox(width: 2.0),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\nEos rem fugiat nemo, error eveniet vero veritatis quam',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
        SizedBox(
          height: 16,
        ),
        Card(
          elevation: 4,
          child: Container(
              // height: 100,
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7, top: 10),
                child: Row(
                  children: [
                    Text(
                      'Cancellation Policy',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. In\naliquam labore temporibus, quo ea accusantium repellendus\npariatur.?',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Avoid cacellation as it leads to food wastage',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          )),
        )
      ],
    );
  }
}

class Red_Button extends StatefulWidget {
  const Red_Button({super.key});

  @override
  State<Red_Button> createState() => _Red_ButtonState();
}

class _Red_ButtonState extends State<Red_Button> {
  int _selectedButtonIndex = -1;

  void _selectButton(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  Widget buildButton(String price, int index) {
    bool isSelected = _selectedButtonIndex == index;

    return GestureDetector(
      onTap: () => _selectButton(index),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          color: isSelected ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.wallet,
              color: isSelected ? Colors.white : Colors.red,
            ),
            SizedBox(width: 5.0),
            Text(
              price,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildButton('\$20', 0),
        SizedBox(width: 10),
        buildButton('\$30', 1),
        SizedBox(width: 10),
        buildButton('\$50', 2),
        SizedBox(width: 10),
        buildButton('Other', 3),
      ],
    );
  }
}
