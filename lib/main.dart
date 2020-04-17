import 'package:autoserve/utils/styles.dart';
import 'package:autoserve/views/partials/select_user_type.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AutoServe',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Raleway',
          hintColor: Styles.commonDarkBackground),
      home: SelectUserType(),
    );
  }
}
