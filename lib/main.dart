import 'package:first_task_s/fist_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(

    MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        fontFamily: GoogleFonts
            .montserrat()
            .fontFamily,
      ),
    ),
  );
}

