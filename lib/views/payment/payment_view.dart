import 'package:flutter/material.dart';

class PaymentView extends StatefulWidget {
  PaymentView({Key key}) : super(key: key);

  @override
  _PaymentViewState createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            child: Text("Payment View",
                style: TextStyle(fontSize: 44, fontWeight: FontWeight.w500))));
  }
}
