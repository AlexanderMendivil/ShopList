import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(),
    );
  }
}
