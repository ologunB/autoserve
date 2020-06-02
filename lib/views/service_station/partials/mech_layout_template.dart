import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/service_station/home/mech_home_view.dart';
import 'package:autoserve/views/service_station/profile/mech_service_station_profile.dart';
import 'package:autoserve/views/service_station/repairs/mech_repairs_view.dart';
import 'package:autoserve/views/service_station/wallet/mech_wallet_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MechLayoutTemplate extends StatefulWidget {
  @override
  _MechLayoutTemplateState createState() => _MechLayoutTemplateState();
}

class _MechLayoutTemplateState extends State<MechLayoutTemplate> {
  int pageSelectedIndex = 0;

  final List<Widget> pages = [
    MechHomeView(
      key: PageStorageKey('Page1'),
    ),
    MechRepairsView(
      key: PageStorageKey('Page2'),
    ),
    MechWalletView(
      key: PageStorageKey('Page3'),
    ),
    MechServiceStationProfile(
      key: PageStorageKey('Page4'),
    )
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: pages[pageSelectedIndex],
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 15,
          onTap: (i) {
            setState(() {
              pageSelectedIndex = i;
            });
          },
          currentIndex: pageSelectedIndex,
          selectedItemColor: Styles.appPrimaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 10,
//                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.power),
              title: Text(
                "Repairs",
                style: TextStyle(
                  fontSize: 10,
//                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              title: Text(
                "Wallet",
                style: TextStyle(
                  fontSize: 10,
//                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 10,
//                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ]),
    );
  }
}
