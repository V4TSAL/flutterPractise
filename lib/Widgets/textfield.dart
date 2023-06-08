import 'package:first_task_s/welcome_back_page.dart';
import 'package:flutter/material.dart';

Widget CustomTextField(String t, String icon_name) {
  return (Container(
    child:TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    decoration: InputDecoration(
      icon: Image.asset("assets/icons/${icon_name}"),
      labelText: '${t}',
      labelStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),
      contentPadding: EdgeInsets.fromLTRB(1.0, 12.0, 20.0, 12.0),
    ),
  ),));
}
