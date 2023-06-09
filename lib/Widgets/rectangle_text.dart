import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget TextInRectangle(String t, String img) {
  return Padding(
    padding: const EdgeInsets.only(top:13.0, left: 5,right: 19),
    child: (Container(
        height: 42,
        constraints: const BoxConstraints(
          maxHeight: 100,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [Image.asset("assets/icons/${img}"),
              SizedBox(width: 3,),
              Text(t,
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: const Color.fromRGBO(22, 89, 65, 1),
                          fontSize: 13, fontWeight: FontWeight.w500))),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(202, 253, 235, 1),
            borderRadius: BorderRadius.circular(20)))),
  );
}
