import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/service_station/partials/mech_layout_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterCompleteScreenMech extends StatefulWidget {
  @override
  _RegisterCompleteScreenMechState createState() =>
      _RegisterCompleteScreenMechState();
}

class _RegisterCompleteScreenMechState
    extends State<RegisterCompleteScreenMech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => MechLayoutTemplate()));
        },
        child: Container(
          padding: EdgeInsets.all(20),
          color: Styles.appPrimaryColor,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                    "You are all set. Car owners can now find yout profile on AutoServe",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Center(
                  child: Text(
                    "TAP ANYWHERE TO CONTINUE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
