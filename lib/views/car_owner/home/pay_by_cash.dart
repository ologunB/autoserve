import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymenyByCash extends StatefulWidget {
  @override
  _PaymenyByCashState createState() => _PaymenyByCashState();
}

class _PaymenyByCashState extends State<PaymenyByCash> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60.0),
            child: Text(
              "Kindly Pay cash to the service station representative",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
          ),
        )
      ],
    ));
  }
}
