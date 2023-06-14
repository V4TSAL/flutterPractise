import 'package:first_task_s/welcome_back_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ButtonCustom(BuildContext context,
    double wide, int rgb_a, int rgb_b, int rgb_c, double rgb_d, String button_text, bool ind, Function onclick) {
  return SizedBox(
    width: wide,
    height: 39,
    child: TextButton(
      onPressed: () {
        onclick();
      },
      child: Text(button_text,
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w700,color: Colors.black))),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: ind
                ? BorderSide(color: Colors.black)
                : BorderSide(color: Colors.white),
          ),
          backgroundColor: Color.fromRGBO(rgb_a, rgb_b, rgb_c, rgb_d)),
    ),
  );
}
