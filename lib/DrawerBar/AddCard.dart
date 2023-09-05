import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Add Card",
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 18, left: 18, bottom: 5),
                  child: Text(
                    "Add a card",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 3, left: 18, bottom: 3),
                  child: Text(
                    "We accept Credit and Debit Cards From Visa, Mastercard,",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 2, left: 18, bottom: 10),
                  child: Text(
                    "Sodexo, Rupay, American Express, Maestro & Diners.",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 17, left: 18, bottom: 5),
                  child: Text(
                    "Name on card",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                )
              ],
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(
                top: 5,
                left: 18,
                right: 18,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey), // Set the default border color
                  ),
                  hintText: 'Name on card',
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 17, left: 18, bottom: 5),
                  child: Text(
                    "Card number",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                )
              ],
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(
                top: 5,
                left: 18,
                right: 18,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey), // Set the default border color
                  ),
                  hintText: 'Card number',
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 17, left: 18, bottom: 5),
                  child: Text(
                    "Expiry date",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                )
              ],
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(
                top: 5,
                left: 18,
                right: 18,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey), // Set the default border color
                  ),
                  hintText: 'Expiry date',
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 17, left: 18, bottom: 5),
              child: Text(
                "Name on card",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 17, left: 18, bottom: 5),
                child: Red_Button()),
            Divider(
              thickness: 1,
              height: 20,
            ),
            Container(),
            Container(
              padding: EdgeInsets.only(top: 13, left: 18, right: 18, bottom: 5),
              child: Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt doloremque culpa amet adipisci asperiores commodi sunt a ab, consequuntur inventore minus odio deleniti.",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
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
        buildButton('Personal', 0),
        SizedBox(width: 10),
        buildButton('Business', 1),
        SizedBox(width: 10),
        buildButton('Other', 2),
      ],
    );
  }
}
