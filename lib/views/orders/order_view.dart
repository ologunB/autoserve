import 'package:flutter/material.dart';

class OrdersView extends StatefulWidget {
  OrdersView({Key key}) : super(key: key);

  @override
  _OrdersViewState createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: Text("Orders View",
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.w500))),
    );
  }
}
