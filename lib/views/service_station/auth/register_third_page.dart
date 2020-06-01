import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/partials/custom_button.dart';
import 'package:autoserve/views/service_station/auth/register_fourth_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../partials/custome_textfield.dart';

class RegisterMechThirdPage extends StatefulWidget {
  @override
  _RegisterMechThirdPageState createState() => _RegisterMechThirdPageState();
}

class _RegisterMechThirdPageState extends State<RegisterMechThirdPage> {
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
                  "Step 3/6",
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
                "Service Station Info",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10),
              Text(
                "It only takes a minute to set up your service station account and start receiving requests",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                "Is your service station registered?",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 22, color: Colors.grey[300])
                        ],
                        color: isRegistered
                            ? Styles.appPrimaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            isRegistered = true;
                          });
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "YES",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: isRegistered
                                      ? Colors.white
                                      : Styles.appPrimaryColor),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 15, color: Colors.grey[300])
                        ],
                        color: isRegistered
                            ? Colors.white
                            : Styles.appPrimaryColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            isRegistered = false;
                          });
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "NO",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: isRegistered
                                      ? Styles.appPrimaryColor
                                      : Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomTextField(
                name: "Registered Number",
              ),
              SizedBox(height: 20),
              Text(
                "Service Station Address",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(height: 20),
              CustomTextField(
                name: "Street",
              ),
              SizedBox(height: 20),
              CustomTextField(
                name: "City",
              ),
              SizedBox(height: 20),
              CustomTextField(
                name: "State",
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: CustomButton(
                  title: "Continue",
                  onPress: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => RegisterMechFourthPage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
