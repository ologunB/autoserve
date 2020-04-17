import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CancelledOrders extends StatefulWidget {
  @override
  _CancelledOrdersState createState() => _CancelledOrdersState();
}

class _CancelledOrdersState extends State<CancelledOrders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(left: 8, right: 8, top: 29),
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
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                    )),
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
                    Icon(Icons.ev_station),
                    SizedBox(width: 12.36),
                    Text(
                      "FDA Services",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF595959),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.date_range),
                    SizedBox(width: 12.36),
                    Text(
                      "Cancelled",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFFEB001B),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Divider(),
                )
              ],
            ),
          );
        },
        shrinkWrap: true,
        itemCount: 1,
      ),
    );
  }
}
