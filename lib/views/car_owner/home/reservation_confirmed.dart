import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/partials/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ReserveConfirmedDone extends StatefulWidget {
  @override
  _ReserveConfirmedDoneState createState() => _ReserveConfirmedDoneState();
}

class _ReserveConfirmedDoneState extends State<ReserveConfirmedDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset("assets/images/confirmed.PNG"),
              Text(
                "Reservation completed Successfully",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 28),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8),
                child: Text(
                  "Your Reservation with this service company was Successful. Once accepted we will process payment after the work is completed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8),
                child: Text(
                  "You will receive a confirmation mail with your order details once proessed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Your Order Number: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                      children: <TextSpan>[
                        TextSpan(
                            text: '123Gh3',
                            style: TextStyle(
                              color: Styles.appPrimaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // navigate to desired screen
                              }),
                      ]),
                ),
              ),
              CustomButton(title: "My Orders", onPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
