import 'package:flutter/cupertino.dart';

// ignore: camel_case_types
class Asset_images {
  static const String path = "assets/images/";
  // ignore: non_constant_identifier_names
  static Image ImageLogo() {
    return Image.asset("${path}List.jpg");
  }

  // ignore: non_constant_identifier_names
  static Image ImageLauncher() {
    return Image.asset("${path}Logo.jpg");
  }
}
