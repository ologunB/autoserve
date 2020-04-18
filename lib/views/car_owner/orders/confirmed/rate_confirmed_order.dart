import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/partials/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RateConfirmedOrder extends StatefulWidget {
  @override
  _RateConfirmedOrderState createState() => _RateConfirmedOrderState();
}

class _RateConfirmedOrderState extends State<RateConfirmedOrder> {
  double ratingNum = 1;
  bool makeVisble = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "16th April 2020 (8:45PM)",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF595959),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 18),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Thank You",
                style: TextStyle(
                  fontSize: 16,
//                      fontWeight: FontWeight.w600,
                  color: Color(0xFF595959),
                ),
              ),
            ),
            Text("Your feedback help us serve you better",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Color(0xFF979797))),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/person.png",
//                fit: BoxFit.contain,
                ),
                radius: 35,
                backgroundColor: Colors.grey[100],
//                child: Image.asset(
//                  "assets/images/person.png",
//                  fit: BoxFit.contain,
//                ),
              ),
            ),
            Text("Please rate our service",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Color(0xFF979797),),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SmoothStarRating(
                  allowHalfRating: true,
                  onRatingChanged: (v) {
                    ratingNum = v;
                    setState(() {
                      makeVisble = true;
                    });
                  },
                  starCount: 5,
                  rating: ratingNum,
                  size: 40.0,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  color: Colors.yellow,
                  borderColor: Colors.yellow,
                  spacing: 0.0),
            ),
            Visibility(
                visible: makeVisble,
                child: Column(
                  children: <Widget>[
                    Text(
                        "We are glad you enjoyed the service offered. Any comments?",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.grey)),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Theme(
                        data: ThemeData(
                            primaryColor: Styles.commonDarkBackground,
                            hintColor: Styles.commonDarkBackground),
                        child: TextField(
                          maxLines: 2,
                          decoration: InputDecoration(
                              fillColor: Styles.commonDarkBackground,
                              filled: true,
                              contentPadding: EdgeInsets.all(10),
                              hintStyle: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    CustomButton(
                        title: "Submit",
                        onPress: () {
                          Navigator.pop(context);
                        },)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
