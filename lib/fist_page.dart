import 'dart:async';

import 'package:first_task_s/welcoming_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),
        ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>LoginOrRegisterPage()))
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(126, 253, 208, 1),
      body: Column(children: [SizedBox(width: 1000,height:278),
        Image.asset('assets/images/Vector.png'),
        SizedBox(height: 207,),
        Image.asset('assets/images/Group 947.png'),
      ],),
    );
  }
}
