import 'package:first_task_s/welcome_back_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomTextField(String t, String icon_name) {
  return (Container(
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        icon: Image.asset("assets/icons/${icon_name}"),
        labelText: "${t}",
        labelStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey)),
        contentPadding: EdgeInsets.fromLTRB(1.0, 12.0, 20.0, 12.0),
      ),
    ),
  ));
}
