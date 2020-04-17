import 'package:autoserve/views/service_station/profile/service_station_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeMap extends StatefulWidget {
  @override
  _HomeMapState createState() => _HomeMapState();
}

class _HomeMapState extends State<HomeMap> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: <Widget>[
                CupertinoButton(
                    child: Text("View Mechs Profile"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => ServiceStationProfile()));
                    })
              ],
            ),
          ),
        ));
  }
}
