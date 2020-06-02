import 'package:autoserve/utils/constants.dart';
import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/partials/custom_button.dart';
import 'package:autoserve/views/service_station/auth/register_fifth_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterMechFourthPage extends StatefulWidget {
  @override
  _RegisterMechFourthPageState createState() => _RegisterMechFourthPageState();
}

class _RegisterMechFourthPageState extends State<RegisterMechFourthPage> {
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
              Expanded(
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 2,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: GestureDetector(
                        onTap: () {
                          allBrands[index].isClicked =
                              !allBrands[index].isClicked;
                          setState(() {});
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: allBrands[index].isClicked
                                  ? [
                                      BoxShadow(
                                          color: Styles.appPrimaryColor,
                                          spreadRadius: 2)
                                    ]
                                  : [
                                      BoxShadow(
                                          color:
                                              Styles.commonDarkCardBackground,
                                          spreadRadius: 5,
                                          blurRadius: 10)
                                    ]),
                          child: Stack(
                            children: <Widget>[
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    CachedNetworkImage(
                                      imageUrl: allBrands[index].imagePath,
                                      height: 70,
                                      width: 70,
                                      placeholder: (context, url) => Image(
                                          image: AssetImage(
                                              "assets/images/placeholder.png"),
                                          height: 70,
                                          width: 70,
                                          fit: BoxFit.contain),
                                      errorWidget: (context, url, error) => Image(
                                          image: AssetImage(
                                              "assets/images/placeholder.png"),
                                          height: 70,
                                          width: 70,
                                          fit: BoxFit.contain),
                                    ),
                                    Text(
                                      allBrands[index].name,
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Checkbox(
                                      value: allBrands[index].isClicked,
                                      onChanged: (val) {
                                        allBrands[index].isClicked =
                                            !allBrands[index].isClicked;
                                        setState(() {});
                                      })
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomButton(
            title: "Continue",
            onPress: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => RegisterMechFifthPage()));
            },
          ),
        ),
      ),
    );
  }
}
