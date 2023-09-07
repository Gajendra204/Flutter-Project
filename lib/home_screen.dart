import 'package:eatsome_food/pages/cartPage/cart_page.dart';
import 'package:eatsome_food/pages/deliveryPage/delivery_page.dart';
import 'package:eatsome_food/pages/historyPage/history_page.dart';
import 'package:eatsome_food/pages/offerPage/offer_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final screens = [
    DeliveryPage(),
    OfferPage(),
    Cart(),
    HistoryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens[index],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.redAccent,
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
            height: 60,
            backgroundColor: const Color.fromARGB(255, 253, 252, 252),
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            //  }

            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.delivery_dining),
                label: 'Delivery',
              ),
              NavigationDestination(
                icon: Icon(Icons.local_offer_outlined),
                label: 'Offers',
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
              NavigationDestination(
                icon: Icon(Icons.history_outlined),
                label: 'History',
              ),
            ]),
      ),
    );
  }
}
