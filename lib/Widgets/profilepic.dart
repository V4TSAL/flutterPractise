import 'package:first_task_s/welcome_back_page.dart';
import 'package:flutter/material.dart';

Widget ProfilePicture() {
  return (Stack(
    children: [
      Align(
          alignment: Alignment.center,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("assets/images/buildings.png"))),
      const Padding(
        padding: EdgeInsets.only(top:135.0,left: 135.0,bottom: 10),
        child: CircleAvatar(
          radius: 54,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 53,
            backgroundImage: AssetImage('assets/images/person.png'),
          ),
        ),
      )
    ],
  ));
}
