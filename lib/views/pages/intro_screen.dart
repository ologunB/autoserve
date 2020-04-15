import 'package:autoserve/views/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:autoserve/utils/constants.dart';
import 'package:autoserve/utils/styles.dart';


class IntroScreenPage extends StatefulWidget {
  @override
  _IntroScreenPageState createState() => _IntroScreenPageState();
}

class _IntroScreenPageState extends State<IntroScreenPage> {
  static final List<String> images = [
    'assets/images/Walkthrough1.png',
    'assets/images/Walkthrough2.png',
    'assets/images/Walkthrough3.png',
    'assets/images/Walkthrough4.png',
  ];

  static final List<String> titles = [
    Constants.appName,
    'Flutter Boilerplate/Starter Kit',
    'Enjoy Coding',
  ];

  static final List<String> descriptions = [
    'Some random text\nwill surely appear here',
    'Some random text\nwill surely appear here',
    'Some random text\nwill surely appear here',
    'Some random text\nwill surely appear here',
  ];

  final pages = [
    PageViewModel(
      pageColor: const Color.fromRGBO(22, 160, 133, 1),
      // iconImageAssetPath: 'assets/air-hostess.png',
//      bubble: Image.asset(images[0]),
//      title: Text(titles[0]),
      body: Text(descriptions[0]),
      titleTextStyle: TextStyle(fontFamily: 'Radicals', color: Colors.white),
      bodyTextStyle: Styles.p.copyWith(
        color: Colors.white,
        fontFamily: 'Comfortaa',
        fontStyle: FontStyle.italic,
      ),
      mainImage: Image.asset(
        images[0],
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )
    ),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
//      iconImageAssetPath: images[1],
//      title: Text(titles[1]),
      body: Text(descriptions[1]),
      mainImage: Image.asset(
        images[1],
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'Radicals', color: Colors.white),
      bodyTextStyle: Styles.p.copyWith(
        color: Colors.white,
        fontFamily: 'Comfortaa',
        fontStyle: FontStyle.italic,
      ),
    ),
    PageViewModel(
      pageColor: const Color.fromRGBO(22, 160, 133, 1),
//      iconImageAssetPath: images[2],
//      title: Text(titles[2]),
      body: Text(descriptions[2]),
      mainImage: Image.asset(
        images[2],
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'Radicals', color: Colors.white),
      bodyTextStyle: Styles.p.copyWith(
        color: Colors.white,
        fontFamily: 'Comfortaa',
        fontStyle: FontStyle.italic,
      ),
    ),
    PageViewModel(
      pageColor: const Color.fromRGBO(22, 160, 133, 1),
//      iconImageAssetPath: images[2],
//      title: Text(titles[2]),
      body: Text(descriptions[3]),
      mainImage: Image.asset(
        images[3],
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'Radicals', color: Colors.white),
      bodyTextStyle: Styles.p.copyWith(
        color: Colors.white,
        fontFamily: 'Comfortaa',
        fontStyle: FontStyle.italic,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IntroViewsFlutter(
            pages,
            showNextButton: true,
            showBackButton: true,
            onTapDoneButton: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            pageButtonTextStyles: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
    );
  }

}
