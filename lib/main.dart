import 'package:app_final/MainScreens/home_screen.dart';
import 'package:app_final/Utils/assets_images.dart';
import 'package:app_final/Utils/constants_app.dart';
import 'package:app_final/Utils/text_app.dart';
import 'package:app_final/Widgets/design_assets.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'MainScreens/login/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff2c2b50),
        primaryColorDark: const Color(0xff050028),
        primaryColorLight: const Color(0xff57547c),
        accentColor: const Color(0xffedecee),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xff2c2b50)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SplashScreen(
        seconds: ConstantAPP.TIME_SPLASH_SCREEN,
        navigateAfterSeconds: const Welcome_screen(),
        image: Asset_images.ImageLogo(),
        backgroundColor: Colors.white,
        photoSize: 100,
        loadingText: Text(
          Text_app.LOADING,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        loaderColor: Theme.of(context).primaryColor,
        gradientBackground: Design_assets.linearGradient(context),
      ),
    );
  }
}
