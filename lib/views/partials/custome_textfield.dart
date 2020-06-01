import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class CustomTextField extends StatefulWidget {
  @required String name;
  TextEditingController controller;

  CustomTextField({this.controller, this.name});
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryColor: Styles.commonDarkBackground,
          hintColor: Styles.commonDarkBackground),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
            fillColor: Styles.commonDarkBackground,
            filled: true,

            contentPadding: EdgeInsets.all(10),
            hintText: widget.name,
            hintStyle: TextStyle(
                color: Colors.grey[500],
                fontSize: 22,
                fontWeight: FontWeight.w400),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),),
        style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
