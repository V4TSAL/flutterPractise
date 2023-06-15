import 'package:first_task_s/Widgets/apbar.dart';
import 'package:first_task_s/Widgets/button.dart';
import 'package:first_task_s/Widgets/textfield.dart';
import 'package:first_task_s/fist_page.dart';
import 'package:first_task_s/home_page.dart';
import 'package:first_task_s/registartion_page.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 75),
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/Welcome back.png',
                    scale: 2.75,
                  )),
              SizedBox(
                height: 18,
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/Login to continue.png',
                    scale: 3.3,
                  )),
              SizedBox(
                height: 75,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField("Username", "person_icon.png")),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField("Password", "lock_icon.png")),
              SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 13.0, right: 3.0),
                    child: Image.asset(
                      'assets/images/Forgot password_.png',
                      scale: 3.5,
                    ),
                  )),
              // SizedBox(height: 25),
              ButtonCustom(
                  context,
                  295,
                  126,
                  253,
                  208,
                  1,
                  "Login",
                  false,
                  () => {
                        // Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName)),
                  Navigator.of(context).pop(),
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        )
                      }),
              SizedBox(
                height: 36,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      "assets/images/Vector 2.png",
                      scale: 4.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      "assets/images/Or sign in with.png",
                      scale: 3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      "assets/images/Vector 2.png",
                      scale: 4.5,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // Image.asset("assets/images/img.png"),
              Row(
                children: [
                  SizedBox(width: 80,),
                  Image.asset("assets/images/Apple.png",scale: 4,),
                  SizedBox(width: 15,),
                  Image.asset("assets/images/Google.png",scale: 4,),
                  SizedBox(width: 15,),
                  Image.asset("assets/images/Linked In.png",scale: 4,),
                  SizedBox(width: 15,),
                  Image.asset("assets/images/Facebook.png",scale: 4,)
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Image.asset("assets/images/Don’t have an account_ Sign Up.png",
                  scale: 3.75)
            ],
          ),
        ));
  }
}
