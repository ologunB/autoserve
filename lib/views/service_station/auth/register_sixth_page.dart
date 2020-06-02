import 'package:autoserve/utils/constants.dart';
import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/partials/custom_button.dart';
import 'package:autoserve/views/service_station/auth/register_complete_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterMechSixthPage extends StatefulWidget {
  @override
  _RegisterMechSixthPageState createState() => _RegisterMechSixthPageState();
}

class _RegisterMechSixthPageState extends State<RegisterMechSixthPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Styles.appPrimaryColor),
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Step 6/6",
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
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "What facilities are available in your service station?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10),
              Text(
                "Select as many facilities available.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: allFacilities.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            allFacilities[index].isClicked =
                                !allFacilities[index].isClicked;
                            setState(() {});
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: allFacilities[index].isClicked
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
                              title: Text(allFacilities[index].name),
                              trailing: Checkbox(
                                  value: allFacilities[index].isClicked,
                                  onChanged: (val) {
                                    allFacilities[index].isClicked =
                                        !allFacilities[index].isClicked;
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
            title: "Finish setup",
            onPress: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => RegisterCompleteScreenMech()));
            },
          ),
        ),
      ),
    );
  }
}
