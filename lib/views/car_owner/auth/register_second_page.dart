import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/car_owner/auth/register_complete_page.dart';
import 'package:autoserve/views/partials/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RegisterSecondPage extends StatefulWidget {
  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
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
                  "Step 2/2",
                  style: TextStyle(
                      color: Styles.appPrimaryColor,
                      fontSize: 22,
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
                "Enter Verification Code",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10),
              Text(
                "Enter the verification code sent to your Email/Phone number",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: PinCodeTextField(
                  length: 5,
                  obsecureText: false,
                  inactiveColor: Colors.grey,
                  animationType: AnimationType.fade,
                  textInputType: TextInputType.numberWithOptions(),
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
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: CustomButton(
                  title: "Continue",
                  onPress: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => RegisterCompleteScreen()));
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
