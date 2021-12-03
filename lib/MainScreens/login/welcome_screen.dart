import 'package:app_final/Widgets/design_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class Welcome_screen extends StatefulWidget {
  const Welcome_screen({Key? key}) : super(key: key);

  @override
  _Welcome_screenState createState() => _Welcome_screenState();
}

Widget _loginButton(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 50.0, bottom: 25),
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () => print("boton iniciar sesion"),
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          primary: Colors.white),
      child: Text(
        "Login",
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            letterSpacing: 1.5,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget _signUpButton(BuildContext context) {
  return Container(
    width: double.infinity,
    child: OutlinedButton(
      onPressed: () => print("boton registro"),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        primary: Colors.white,
        side: const BorderSide(color: Colors.white, width: 1),
      ),
      child: const Text(
        "Registrarse",
        style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

// ignore: camel_case_types
class _Welcome_screenState extends State<Welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration:
              BoxDecoration(gradient: Design_assets.linearGradient(context)),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Design_assets.titleCustom(),
                _loginButton(context),
                _signUpButton(context)
              ]),
        ),
      )),
    );
  }
}
