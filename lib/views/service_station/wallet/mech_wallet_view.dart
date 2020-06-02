import 'package:flutter/material.dart';

class MechWalletView extends StatefulWidget {
  MechWalletView({Key key}) : super(key: key);

  @override
  _MechWalletViewState createState() => _MechWalletViewState();
}

class _MechWalletViewState extends State<MechWalletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Mech Wallet",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: Container(),
    );
  }
}
