import 'package:flutter/cupertino.dart';

Widget CustomIcon(String name){
  return(Container(child: Image.asset("assets/icons/${name}",scale: 3,),));
}