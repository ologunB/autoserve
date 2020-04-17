import 'package:autoserve/views/car_owner/orders/confirmed/rate_confirmed_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderConfirmedDone extends StatefulWidget {
  @override
  _OrderConfirmedDoneState createState() => _OrderConfirmedDoneState();
}

class _OrderConfirmedDoneState extends State<OrderConfirmedDone> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 3000)).then((val) {
      Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
              builder: (context) => RateConfirmedOrder(),
              fullscreenDialog: true));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/confirmed.PNG"),
            Text(
              "Order Confirmed",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 28),
            )
          ],
        ),
      ),
    );
  }
}
