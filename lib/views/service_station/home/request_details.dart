import 'package:autoserve/views/partials/custom_button.dart';
import 'package:flutter/material.dart';

class RequestDetails extends StatefulWidget {
  @override
  _RequestDetailsState createState() => _RequestDetailsState();
}

class _RequestDetailsState extends State<RequestDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Order Details",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.directions_car),
              title: Text(
                "Service type",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              subtitle: Text(
                "General Servicing",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Divider(),
            ),
            ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "Client",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              subtitle: Text(
                "Frederick Damasus",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Divider(),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text(
                "Location",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              subtitle: Text(
                "12 Adeyemi Drive, Lekki Phase 1, Lagos",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              isThreeLine: true,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Divider(),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text(
                "Scheduled Time / Date",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 100,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "09 February",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "9:30 am",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Divider(),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.blue),
              isThreeLine: true,
              title: Text(
                "Instructions",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              subtitle: Text(
                "Check the engines, replace oil, change the spark plugs, also check the headlight. These are some of the issues that are paramount. Please be careful with the interiors",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Divider(),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.blue),
              isThreeLine: true,
              title: Text(
                "Car Details",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "RED#: 6338223",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Mercedes",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "e350",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Divider(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomButton(
          title: "Accept",
          onPress: () {},
        ),
      ),
    );
  }
}
