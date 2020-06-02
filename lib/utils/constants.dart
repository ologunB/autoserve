import 'package:autoserve/models/car_brand.dart';

class Constants {
  static bool testing = false;

  /// e.t.c.
  static double commonPadding = 15.0;
  static String commonDateFormat = "dd MMM yyyy, hh:mm a";

  /// storage keys
  static String accessTokenKey = "token";
  static String userNameKey = "name";
  static String userFullNameKey = "full_name";
  static String userAkaKey = "aka";
  static String userEmailKey = "email";
  static String shortLoremText =
      "Lorem ipsum dolor sit amet, mod tempor incididunt ut labore et dolore magna aliqua.  ";
  static String longLoremText =
      "Lorem ipsum dolor sit amet,  tempor incididu gna aliqua. Ut enim ad minim veniam, quis nostrud exercitation";
  static List<String> userType = ["Car Owner", "Service Station"];
}

List<CarBrand> allBrands = [
  CarBrand(name: "Mercedes", imagePath: "em", isClicked: false),
  CarBrand(name: "Toyota", imagePath: "em", isClicked: false),
  CarBrand(name: "Nissan", imagePath: "em", isClicked: false),
  CarBrand(name: "Kia", imagePath: "em", isClicked: false),
];

List<CarBrand> allServices = [
  CarBrand(name: "General Servicing", isClicked: false),
  CarBrand(name: "Lube Service", isClicked: false),
  CarBrand(name: "Diagnosics", isClicked: false),
  CarBrand(name: "Suspension Diagnosis", isClicked: false),
  CarBrand(name: "Wheel Balancing", isClicked: false),
  CarBrand(name: "Wheel Alignment", isClicked: false),
  CarBrand(name: "Repairs", isClicked: false),
  CarBrand(name: "Battery Boosting", isClicked: false),
];

List<CarBrand> allFacilities = [
  CarBrand(name: "4 pole lift", isClicked: false),
  CarBrand(name: "2 pole lift", isClicked: false),
  CarBrand(name: "Wheel balancing machine", isClicked: false),
  CarBrand(name: "Wheel alignment analyzer", isClicked: false),
  CarBrand(name: "Automated tyre changer", isClicked: false),
  CarBrand(name: "Air compressor", isClicked: false),
  CarBrand(name: "Complete vulcanizer tools", isClicked: false),
];
