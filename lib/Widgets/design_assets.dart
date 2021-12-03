import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Design_assets {
  static LinearGradient linearGradient(BuildContext context) {
    return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Theme.of(context).primaryColorLight,
          Theme.of(context).primaryColor,
        ]);
  }

  static RichText titleCustom() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "Shopping",
          style: GoogleFonts.portLligatSans(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white60),
          children: const [
            TextSpan(
                text: "List",
                style: TextStyle(color: Colors.white, fontSize: 30))
          ]),
    );
  }
}
