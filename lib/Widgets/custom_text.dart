import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomSmallText(String t) {
  return (Container(
    child: Padding(
      padding: const EdgeInsets.only(left: 13, top: 13),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(t,
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)))),
    ),));
}

Widget CustomLargeText(String t) {
  return (Container(
    child: Padding(
      padding: const EdgeInsets.only(left: 13.0, top: 13, bottom: 5),
      child: Text(
          t, style: GoogleFonts.montserrat(
          textStyle: const TextStyle(fontSize: 18))),
    ),));
  }