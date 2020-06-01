import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/partials/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../partials/custome_textfield.dart';

class RegisterMechFourthPage extends StatefulWidget {
  @override
  _RegisterMechFourthPageState createState() => _RegisterMechFourthPageState();
}

class _RegisterMechFourthPageState extends State<RegisterMechFourthPage> {
  bool isRegistered = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Styles.appPrimaryColor),
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Step 4/6",
                  style: TextStyle(
                      color: Styles.appPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "What car brands do you repair?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10),
              Text(
                "Select all applicable",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              SizedBox(height: 20),


              SizedBox(height: 20),

            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CustomButton(
            title: "Continue",
            onPress: () {
              /*    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => RegisterCompleteScreen()));
                 */
            },
          ),
        ),
      ),
    );
  }
}
