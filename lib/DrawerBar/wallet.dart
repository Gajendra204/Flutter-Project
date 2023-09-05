import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  Wallet({super.key});
  final List<WalletData> walletDataList = [
    WalletData(
        title: 'One-click checkout',
        icon: Icon(Icons.home_outlined),
        subtitle: 'No need to wait for OTPs- payment get processed\ninstantly'),
    WalletData(
        title: 'Safe and secure',
        icon: Icon(Icons.security),
        subtitle: 'No need to wait for OTPs- payment get processed\ninstantly'),
    WalletData(
        title: 'Complimentary Eatsome Pro',
        icon: Icon(Icons.home_outlined),
        subtitle: 'Get Eatsome Pro for 3 months on adding \$5,000 or\nmore'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 28,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.location_on_sharp,
                      size: 24,
                      color: Colors.red,
                    ),
                    GestureDetector(
                      child: Container(
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Set Location',
                            style: TextStyle(color: Colors.red, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Stack(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'notification');
                          },
                          icon: Icon(
                            Icons.notifications_none,
                            size: 28,
                          ),
                        ),
                        Positioned(
                          top: 12,
                          right: 10,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Icon(
                            Icons.menu,
                            color: Colors.black,
                            size: 28,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, 'drawer');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // height: 300,
                child: Column(
                  children: [
                    Image.asset('images/wallet.png'),
                    Text(
                      'Edition Wallet',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                          'Seamless one-click checkout for all payments\n                              on Eatsome'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 18),
                      child: Container(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.red),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'delivery');
                              },
                              child: Text(
                                'Activate Wallet',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 3,
                thickness: 1,
                color: Colors.grey.shade500,
              ),
              ListView.builder(
                itemCount: walletDataList.length * 2 -
                    1, // Double the item count to include dividers
                shrinkWrap: true, // Add this to prevent scrolling issues
                itemBuilder: (context, index) {
                  if (index.isOdd) {
                    // Odd indices are dividers
                    return Container(
                      height: 1, // Set the height of the divider
                      color: Colors.grey, // Set the color you want
                    );
                  } else {
                    // Even indices are items from walletDataList
                    final walletIndex = index ~/ 2;
                    return WalletWidget(
                      walletData: walletDataList[walletIndex],
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WalletData {
  final String title;
  final Icon icon;
  final String subtitle;

  WalletData({
    required this.title,
    required this.icon,
    required this.subtitle,
  });
}

class WalletWidget extends StatelessWidget {
  final WalletData walletData;

  WalletWidget({required this.walletData});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        walletData.title,
      ),
      subtitle: SizedBox(
        height: 40,
        child: Text(
          walletData.subtitle,
          maxLines: 2,
        ),
      ),
      leading: walletData.icon,
    );
  }
}
