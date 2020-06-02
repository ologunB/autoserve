import 'package:flutter/material.dart';

class MechRepairsView extends StatefulWidget {
  MechRepairsView({Key key}) : super(key: key);

  @override
  _MechRepairsViewState createState() => _MechRepairsViewState();
}

class _MechRepairsViewState extends State<MechRepairsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Mech Repairs",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: Container(),
    );
  }
}
