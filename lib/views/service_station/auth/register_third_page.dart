import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/partials/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RegisterMechThirdPage extends StatefulWidget {
  @override
  _RegisterMechThirdPageState createState() => _RegisterMechThirdPageState();
}

class _RegisterMechThirdPageState extends State<RegisterMechThirdPage> {
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
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: PinCodeTextField(
                  length: 4,autoFocus: true,
                  obsecureText: false,
                  inactiveColor: Colors.grey,
                  animationType: AnimationType.fade,
                  textInputType: TextInputType.number,
                  shape: PinCodeFieldShape.box,
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                  autoDismissKeyboard: true,
                  animationDuration: Duration(milliseconds: 300),
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              Center(
                child: Text(
                  "Resend Code",
                  style: TextStyle(color: Styles.appPrimaryColor, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
