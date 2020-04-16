import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            child: Text("Profile View",
                style: TextStyle(fontSize: 44, fontWeight: FontWeight.w500))));
  }
}
