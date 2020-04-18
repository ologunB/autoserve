import 'package:autoserve/utils/constants.dart';
import 'package:autoserve/utils/styles.dart';
import 'package:flutter/material.dart';

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
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Row(
                    children: <Widget>[
                      CircleAvatar(backgroundImage: AssetImage("assets/images/person.png"),
                        radius: 15,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Hi, Mayowa",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
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
                padding: const EdgeInsets.only(bottom: 8.0, top: 41.0),
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
                                  fontSize: 16,
//                                    fontWeight: FontWeight.w400,
                                ),
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
                                color: Color(0xFF6B7C93),
                              ),
                            ),
                            onPressed: () {},
                          )
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
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  )),
                  Icon(Icons.map),
                  SizedBox(
                    width: 5.7,
                  ),
                  Text(
                    "Open Map",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF595959),
//                        fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0, top: 26.0),
                child: Text(
                  "Popular Services",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: 160,
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
                          color: Color(0xFFE4FCEA),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                          ),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 12.0,
                              ),
                              Text(
                                "₦2,000",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF1BD647)),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Wheel Balancing",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF535461),
                                ),
                              ),
                              SizedBox(height: 7),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBBF7C9),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(4),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "2 Hours",
                                    style: TextStyle(
                                        color: Color(0xFF6B7C93),
                                        fontSize: 12,
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
                padding: const EdgeInsets.only(bottom: 18.0, top: 32),
                child: Text(
                  "Recommended for you",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF595959),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 184,
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
                          color: Color(0xFFE6F0FF),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                          ),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {});
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
                                      SizedBox(
                                        height: 21.0,
                                      ),
                                      Text(
                                        "FDA Car Service",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF535461),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4.0,
                                      ),
                                      Text(
                                        "Automobile Repair Station",
                                        style: TextStyle(
                                          fontSize: 12,
//                                            fontWeight: FontWeight.w300,
                                          color: Color(0xFF535461),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4.0,
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
                                  SizedBox(width: 70),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xFF000000),
                                        size: 15.83,
                                      ),
                                      Text(
                                        "800m",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF535461),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Open",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF1BD647),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "9am - 6pm",
                                    style: TextStyle(
                                      fontSize: 12,
//                                        fontWeight: FontWeight.w300,
                                      color: Color(0xFF535461),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                              Expanded(
                                child: Text(
                                  Constants.shortLoremText,
                                  style: TextStyle(
                                    fontSize: 12,
//                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF535461),
                                  ),
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
