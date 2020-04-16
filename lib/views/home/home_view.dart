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
      child: Container(
          child: Text("Home View",
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.w500))),
    );
  }
}
