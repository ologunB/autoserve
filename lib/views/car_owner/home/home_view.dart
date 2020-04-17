import 'package:autoserve/utils/constants.dart';
import 'package:autoserve/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_map.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/person.png",
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Hi, Mayowa",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        icon: Icon(Icons.notifications), onPressed: () {}),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0, top: 18),
                child: Theme(
                    data: ThemeData(
                        primaryColor: Styles.commonDarkBackground,
                        hintColor: Styles.commonDarkBackground),
                    child: Container(
                      color: Styles.commonDarkBackground,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey[500],
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Styles.commonDarkBackground,
                                filled: true,
                                contentPadding: EdgeInsets.all(5),
                                hintText: 'What do you need done?',
                                hintStyle: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          IconButton(
                              icon: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.filter_list,
                                  color: Colors.grey[500],
                                ),
                              ),
                              onPressed: () {})
                        ],
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Lagos, Nigeria",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  )),
                  Icon(Icons.map),
                  Text(
                    "Open Map",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0, top: 18),
                child: Text(
                  "Popular Service",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 150,
                width: 10000,
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                  itemCount: typeList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, position) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[100],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => HomeMap()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "₦2000",
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.green),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Wheel Balancing",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 7),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.lightGreen,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(5),
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(15),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "2 Hrs",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0, top: 18),
                child: Text(
                  "Recommended for you",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 200,
                width: 10000,
                child: ListView.builder(
                  itemCount: typeList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, position) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: 312,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent[100],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(5),
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => HomeMap()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "FDA Car Service",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "Automobile Repair Station",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "4.6 Stars",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.yellow),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Icon(Icons.location_on),
                                      Text(
                                        "800m",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Open",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.green),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "8am - 5pm",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Text(
                                  Constants.shortLoremText,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> typeList = ["Crops", "Livestocks", "Tubers"];
