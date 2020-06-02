import 'package:autoserve/utils/constants.dart';
import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/partials/custom_button.dart';
import 'package:autoserve/views/service_station/auth/register_sixth_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterMechFifthPage extends StatefulWidget {
  @override
  _RegisterMechFifthPageState createState() => _RegisterMechFifthPageState();
}

class _RegisterMechFifthPageState extends State<RegisterMechFifthPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Styles.appPrimaryColor),
          backgroundColor: Styles.commonDarkBackground,
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Step 5/6",
                  style: TextStyle(
                      color: Styles.appPrimaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          color: Styles.commonDarkBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "What services do you offer at your service station?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10),
              Text(
                "Select as many services as you offer.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: allServices.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            allServices[index].isClicked =
                                !allServices[index].isClicked;
                            setState(() {});
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: allServices[index].isClicked
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
                            child: ListTile(
                              title: Text(allServices[index].name),
                              trailing: Checkbox(
                                  value: allServices[index].isClicked,
                                  onChanged: (val) {
                                    allServices[index].isClicked =
                                        !allServices[index].isClicked;
                                    setState(() {});
                                  }),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
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
                      builder: (context) => RegisterMechSixthPage()));
            },
          ),
        ),
      ),
    );
  }
}
