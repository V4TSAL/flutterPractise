import 'package:first_task_s/welcome_back_page.dart';
import 'package:flutter/material.dart';

Widget ButtonCustom(BuildContext context,
    double w, int a, int b, int c, double d, String t, bool ind, Function onclick) {
  return SizedBox(
    width: w,
    height: 39,
    child: TextButton(
      onPressed: () {
        onclick();
      },
      child: Text(
        "${t}",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: ind
                ? BorderSide(color: Colors.black)
                : BorderSide(color: Colors.white),
          ),
          backgroundColor: Color.fromRGBO(a, b, c, d)),
    ),
  );
}
