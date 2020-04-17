import 'package:autoserve/utils/constants.dart';
import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/car_owner/auth/register_first_page.dart';
import 'package:autoserve/views/service_station/auth/register_first_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);

    path.lineTo(0, 0.0);
    //   path.lineTo(size.width * 0.25, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class SelectUserType extends StatefulWidget {
  @override
  _SelectUserTypeState createState() => _SelectUserTypeState();
}

class _SelectUserTypeState extends State<SelectUserType> {
  int typeSelected = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: height,
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Styles.appPrimaryColor,
                        backgroundBlendMode: BlendMode.color,
                        image: DecorationImage(
                          image: AssetImage("assets/images/cc3.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: height / 2.5,
                      width: width,
                    ),
                    clipper: MyCustomClipper(),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w600),
                      ),
                    ),
                    bottom: 6,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => RegisterFirstPage()));
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 10, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Styles.appPrimaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 12, color: Colors.grey[300])
                            ]),
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
                                child: Icon(Icons.directions_car,
                                    color: Styles.appCanvasColor),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    Constants.userType[0],
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: Styles.appCanvasColor),
                                  ),
                                  Text(
                                    Constants.shortLoremText,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Styles.appCanvasColor),
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => RegisterMechFirstPage()));
                    },
                    child: Padding(
                      padding:
                      const EdgeInsets.only(top: 18.0, left: 10, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Styles.appCanvasColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 12, color: Colors.grey[300])
                            ]),
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
                                child: Icon(Icons.directions_boat,
                                    color: Styles.appPrimaryColor),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    Constants.userType[1],
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: Styles.appPrimaryColor),
                                  ),
                                  Text(
                                    Constants.shortLoremText,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Styles.appPrimaryColor),
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
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
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
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    }),
                            ]),
                      ),
                    ),
                  ),
                  Flexible(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      //  mainAxisSize: MainAxisSize.max,
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
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
