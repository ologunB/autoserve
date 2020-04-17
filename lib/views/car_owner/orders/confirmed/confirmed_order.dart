import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_details.dart';

class ConfirmedOrders extends StatefulWidget {
  @override
  _ConfirmedOrdersState createState() => _ConfirmedOrdersState();
}

class _ConfirmedOrdersState extends State<ConfirmedOrders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => OrderDetails()));
            },
            child: Container(
              padding: EdgeInsets.only(left: 8, right: 8, top: 8),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "General Servicing",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.payment,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                      Text("₦5000",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: Colors.black))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.directions_boat),
                      SizedBox(width: 10),
                      Text("FDA Services",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w300,
                              color: Colors.black))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.date_range),
                      SizedBox(width: 10),
                      Text("16th April 2020 (8:45)",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w300,
                              color: Colors.black))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                    child: Divider(),
                  )
                ],
              ),
            ),
          );
        },
        shrinkWrap: true,
        itemCount: 2,
      ),
    );
  }
}
