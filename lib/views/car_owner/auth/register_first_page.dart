import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/car_owner/auth/register_second_page.dart';
import 'package:autoserve/views/partials/custom_button.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  _buildCountryPickerDropdown(
          {bool filtered = false,
          bool sortedByIsoCode = false,
          bool hasPriorityList = false}) =>
      Row(
        children: <Widget>[
          CountryPickerDropdown(
            initialValue: 'NG',
            itemBuilder: _buildDropdownItem,
            itemFilter: filtered
                ? (c) => ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode)
                : null,
            priorityList: hasPriorityList
                ? [
                    CountryPickerUtils.getCountryByIsoCode('GB'),
                    CountryPickerUtils.getCountryByIsoCode('CN'),
                  ]
                : null,
            sortComparator: sortedByIsoCode
                ? (Country a, Country b) => a.isoCode.compareTo(b.isoCode)
                : null,
            onValuePicked: (Country country) {},
          ),
        ],
      );

  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            Text(
              "+${country.phoneCode} ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      );
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
                  "Step 1/2",
                  style: TextStyle(
                      color: Styles.appPrimaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
        body: ListView(children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Let's get Started",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 10),
                Text(
                  "It takes just a minute to set up your account and start requestig for auto repair services",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Theme(
                    data: ThemeData(
                        primaryColor: Styles.commonDarkBackground,
                        hintColor: Styles.commonDarkBackground),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Styles.commonDarkBackground,
                          filled: true,
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Full Name',
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Theme(
                    data: ThemeData(
                        primaryColor: Styles.commonDarkBackground,
                        hintColor: Styles.commonDarkBackground),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Styles.commonDarkBackground,
                          filled: true,
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Email',
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Container(
                    color: Styles.commonDarkBackground,
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        _buildCountryPickerDropdown(),
                        Expanded(
                          child: Theme(
                            data: ThemeData(
                                primaryColor: Styles.commonDarkBackground,
                                hintColor: Styles.commonDarkBackground),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Styles.commonDarkBackground,
                                filled: true,
                                contentPadding: EdgeInsets.all(10),
                                hintText: '(555) 555 555',
                                hintStyle: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Theme(
                    data: ThemeData(
                        primaryColor: Styles.commonDarkBackground,
                        hintColor: Styles.commonDarkBackground),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Styles.commonDarkBackground,
                          filled: true,
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Password',
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
                  title: "Continue",
                  onPress: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => RegisterSecondPage()));
                  },
                ),
                Center(
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
                                    color: Styles.appPrimaryColor,
                                    fontSize: 18),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
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
                                      color: Styles.appPrimaryColor),
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
                                      color: Styles.appPrimaryColor),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    }),
                            ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
