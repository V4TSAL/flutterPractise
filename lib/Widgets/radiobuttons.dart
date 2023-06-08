import 'package:first_task_s/welcome_back_page.dart';
import 'package:flutter/material.dart';

Widget CustomRadioButtons(String t) {
  return (Container(
    child: RadioListTile(
    title: Text("Male"),
    value: "male",
    groupValue: gender,
    onChanged: (value) {
      setState(() {
        gender = value.toString();
      });
    },
  ),);
  }
