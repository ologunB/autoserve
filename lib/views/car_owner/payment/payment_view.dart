import 'package:autoserve/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_new_card.dart';

class PaymentView extends StatefulWidget {
  PaymentView({Key key}) : super(key: key);

  @override
  _PaymentViewState createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  List transacts = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Payment",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.grey[100]),
            backgroundColor: Colors.grey[100],
            elevation: 0.0,
          ),
          body: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 3,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (context) => SelectPaymentMethod()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                    Text(
                                      "Add Card",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                          child: Text(
                            1 == 0 ? "" : "Transactions",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Expanded(
                          child: 1 == 0
                              ? Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "You have not made any transaction",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey),
                              ),
                            ),
                          )
                              : ListView.builder(
                            itemCount: transacts.length,
                            itemBuilder: (context, int index) {
                              return Container(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                            const EdgeInsets.all(4.0),
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius:
                                                BorderRadius.all(
                                                    Radius.circular(25)),
                                              ),
                                              child: Icon(
                                                  Icons.directions_car,
                                                  color:
                                                  Styles.appPrimaryColor),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "General Servicing",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                "08:12AM, 12th May",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                    FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "₦10,000",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey),
                                    )
                                  ],
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                ),
                              );
                            },
                          ),
                        )
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
