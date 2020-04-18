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
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 30),
              child: Center(
                child: Text(
                  "Step 2/2",
                  style: TextStyle(
                    color: Color(0xFF6C63FF),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
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
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 24),
              Text(
                "Enter the verification code sent to your Email/Phone number",
                style: TextStyle(
                    fontSize: 16,
//                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  right: 18.0,
                  bottom: 18.0,
                ),
                child: PinCodeTextField(
                  length: 4,
                  obsecureText: false,
                  inactiveColor: Colors.grey,
                  animationType: AnimationType.fade,
                  textInputType: TextInputType.numberWithOptions(),
                  shape: PinCodeFieldShape.box,
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                  autoDismissKeyboard: true,
                  animationDuration: Duration(milliseconds: 300),
                  borderRadius: BorderRadius.circular(4),
                  fieldHeight: 54,
                  fieldWidth: 54,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              Center(
                child: Text(
                  "Resend Code",
                  style: TextStyle(
                    color: Color(0xFFA8A8A8),
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 29.0),
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
