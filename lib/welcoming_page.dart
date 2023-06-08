import 'package:first_task_s/Widgets/button.dart';
import 'package:first_task_s/registartion_page.dart';
import 'package:first_task_s/welcome_back_page.dart';
import 'package:flutter/material.dart';

import 'Widgets/apbar.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 96,
          ),
          Image.asset('assets/images/Group 80243.png'),
          SizedBox(
            height: 65,
          ),
          ButtonCustom(context,295, 126, 253, 208, 1, "Login", false,(){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
          );
          }),
          SizedBox(
            height: 18,
          ),
          ButtonCustom(context,295, 255, 255, 255, 1, "Register", true,(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegistrationPage()),
            );
          })
        ],
      ),
    );
  }
}
