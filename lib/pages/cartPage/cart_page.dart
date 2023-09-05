import 'package:flutter/material.dart';

import 'cart components/card_top.dart';
import 'cart components/item_total.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            "Cart",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Container(
              height: 12,
              margin: EdgeInsets.only(top: 8, bottom: 8, right: 10),
              padding: EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      child: Center(
                        child: Icon(
                          Icons.local_offer,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: 'Coupon ',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'drawer');
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 280, child: Cart_Top()),
              Column(
                children: [
                  Card(
                    elevation: 4,
                    child: Container(
                      // width: 500,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.local_offer,
                              color: Colors.blue.shade700,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Use Coupons',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.blue.shade700,
                                size: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Total(),
            ],
          ),
        ),
      ),
    );
  }
}
