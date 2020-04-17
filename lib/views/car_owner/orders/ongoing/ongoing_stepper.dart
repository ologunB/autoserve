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
                child: CustomButton(
                    title: "Confirm Order",
                    onPress: () {
                      showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (_) {
                            return ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.0),
                              ),
                              child: AlertDialog(
                                title: Center(
                                  child: Text(
                                    "Are you sure you want to confirm this order?",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                content: Container(
                                  child: Text(
                                    "Make sure you have verified the service booked has been completed",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                actions: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "CANCEL",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.pushReplacement(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  OrderConfirmedDone()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "CONFIRM",
                                        style: TextStyle(
                                          color: Styles.appPrimaryColor,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Styles.appPrimaryColor, blurRadius: 1)
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Report",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Styles.appPrimaryColor),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
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
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w300),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            'Today (9:45 AM)',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
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
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Today (9:45 AM)',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
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
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Today (9:45 AM)',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
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
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Today (9:45 AM)',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
      content: Container()),
];
