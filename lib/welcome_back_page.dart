import 'package:first_task_s/apbar.dart';
import 'package:first_task_s/button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            SizedBox(height: 65),
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/Welcome back.png')),
            SizedBox(
              height: 13,
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/Login to continue.png')),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.mail_outlined),
                  labelText: 'Email',
                  contentPadding: EdgeInsets.fromLTRB(1.0, 12.0, 20.0, 12.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock_outline),
                  labelText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(1.0, 12.0, 20.0, 12.0),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Image.asset('assets/images/Forgot password_.png')),
            ButtonCustom(context, 315, 126, 253, 208, 1, "Login", false, ()=>{
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
            )

            }),
            SizedBox(
              height: 36,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset("assets/images/Vector 2.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset("assets/images/Or sign in with.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset("assets/images/Vector 2.png"),
                )
              ],
            ),
            Image.asset("assets/images/img.png"),
            SizedBox(
              height: 25,
            ),
            Image.asset("assets/images/Don’t have an account_ Sign Up.png")
          ],
        ));
  }
}
