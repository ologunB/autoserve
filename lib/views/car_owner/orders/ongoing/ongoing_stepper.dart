import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/car_owner/orders/confirmed/order_confirmed_done.dart';
import 'package:autoserve/views/partials/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OngoingStepper extends StatefulWidget {
  @override
  _OngoingStepperState createState() => _OngoingStepperState();
}

class _OngoingStepperState extends State<OngoingStepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Order Details",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Stepper(
                steps: steps,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),

)



          ]
        ),
      ),
    );
  }
}
















List<Step> steps = [
  Step(
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            'Order Placed',
            style: TextStyle(
              color: Color(0xFF595959),
              fontSize: 16,
//              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            'Today (9:45 AM)',
            style: TextStyle(
              color: Color(0xFFA8A8A8),
              fontSize: 12,
            ),
          ),
        )
      ],
    ),
    isActive: true,
    state: StepState.complete,
    content: Container(),
  ),
  Step(
      isActive: false,
      state: StepState.indexed,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Order Accepted',
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 16,
//                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Today (9:45 AM)',
              style: TextStyle(
                color: Color(0xFFA8A8A8),
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
      content: Container()),
  Step(
      state: StepState.indexed,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Servicing Vehicle',
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 16,
//                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Today (9:45 AM)',
              style: TextStyle(
                color: Color(0xFFA8A8A8),
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
      content: Container()),
  Step(
      state: StepState.indexed,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Order Completed',
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Today (9:45 AM)',
              style: TextStyle(
                color: Color(0xFFA8A8A8),
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
      content: Container()),
];
