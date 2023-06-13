import 'package:first_task_s/Widgets/apbar.dart';
import 'package:first_task_s/Widgets/button.dart';
import 'package:first_task_s/Widgets/custom_text.dart';
import 'package:first_task_s/Widgets/textfield.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/Register.png',scale: 2.5,)),
            SizedBox(height: 13,),
            Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/Create your account to continue.png',scale: 3,))
          ,
            SizedBox(height: 25,),
            CustomTextField("First Name","person_icon.png"),
            SizedBox(height: 30,),
            CustomTextField("Last Name","person_icon.png"),
            SizedBox(height: 30,),
            CustomTextField("Email","person_icon.png"),
            SizedBox(height: 30,),
            CustomTextField("Phone","phone_icon.png"),
            SizedBox(height: 30,),
            CustomTextField("Date of birth","calendar_icon.png"),
            SizedBox(height: 18,),
            CustomSmallText("Gender"),
            SizedBox(height: 30,),
            CustomTextField("Password","lock_icon.png"),
            SizedBox(height: 30,),
            CustomTextField("Confirm password","lock_icon.png"),
            SizedBox(height: 30,),
            ButtonCustom(context,295, 126, 253, 208, 1, "Login", false,(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Text("REGISTRATION COMPLETE")),
              );
            }),
          ],
        ),
      ),
    ));
  }
}
