import 'package:first_task_s/welcome_back_page.dart';
import 'package:flutter/material.dart';

Widget ButtonCustom(BuildContext context,
    double wide, int rgb_a, int rgb_b, int rgb_c, double rgb_d, String button_text, bool ind, Function onclick) {
  return SizedBox(
    width: wide,
    height: 39,
    child: TextButton(
      onPressed: () {
        onclick();
      },
      child: Text(
        "${button_text}",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
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
