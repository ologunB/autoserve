import 'package:autoserve/utils/constants.dart';
import 'package:autoserve/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SelectUserType extends StatefulWidget {
  @override
  _SelectUserTypeState createState() => _SelectUserTypeState();
}

class _SelectUserTypeState extends State<SelectUserType> {
  int typeSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Flexible(
          flex: 7,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/cc3.png",
                    ),
                    fit: BoxFit.fill)),
          ),
        ),
        Flexible(
          flex: 11,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 10, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          typeSelected = index;
                        });
                      },
                      child: Card(
                        child: Container(
                          color: typeSelected == index
                              ? Styles.appPrimaryColor
                              : Styles.appCanvasColor,
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                  ),
                                  child: index == 0
                                      ? Icon(Icons.directions_car,
                                          color: typeSelected == index
                                              ? Styles.appCanvasColor
                                              : Styles.appPrimaryColor)
                                      : Icon(Icons.directions_boat,
                                          color: typeSelected == index
                                              ? Styles.appCanvasColor
                                              : Styles.appPrimaryColor),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      Constants.userType[index],
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          color: typeSelected == index
                                              ? Styles.appCanvasColor
                                              : Styles.appPrimaryColor),
                                    ),
                                    Text(
                                      Constants.shortLoremText,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: typeSelected == index
                                              ? Styles.appCanvasColor
                                              : Styles.appPrimaryColor),
                                    )
                                  ],
                                ),
                              )
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 2,
              ),
              Flexible(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Log in',
                            style: TextStyle(color: Colors.blue, fontSize: 17),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // navigate to desired screen
                              }),
                      ]),
                ),
              ),
              Expanded(
                  child: Column(
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "By signing up you agree to AutoServe's ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Terms and Condition',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // navigate to desired screen
                                }),
                          TextSpan(
                            text: ' and ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // navigate to desired screen
                                }),
                        ]),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
              ))
            ],
          ),
        )
      ],
    ));
  }
}
