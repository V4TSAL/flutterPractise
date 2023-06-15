import 'package:first_task_s/Widgets/apbar.dart';
import 'package:first_task_s/Widgets/button.dart';
import 'package:first_task_s/Widgets/rectangle_text.dart';
import 'package:flutter/material.dart';
int a =0;
int b=0;
class SetStatePractise extends StatefulWidget {
  const SetStatePractise({super.key});

  @override
  State<SetStatePractise> createState() => _SetStatePractiseState();
}

class _SetStatePractiseState extends State<SetStatePractise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Row(
            children: [
              TextInRectangle("$a", "lock_icon.png"),
              TextInRectangle("$b", "lock_icon.png"),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              ButtonCustom(
                  context, 100, 204, 153, 255, 1, "Add in a", false, () {
                    setState(() {
                      a=a+1;
                    });
              }),
              ButtonCustom(
                  context, 100, 204, 153, 255, 1, "Add in b", false, () {
                    setState(() {
                      b=b+1;
                    });
              })
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              ButtonCustom(
                  context, 100, 204, 153, 255, 1, "Sub in a", false, () {
                    setState(() {
                      a=a-1;
                    });
              }),
              ButtonCustom(
                  context, 100, 204, 153, 255, 1, "Sub in b", false, () {
                    setState(() {
                      b=b-1;
                    });
              })
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right:145.0,top: 100),
            child: ButtonCustom(
                context, 100, 204, 153, 255, 1, "Reset", false, () {
                  setState(() {
                    a=0;
                    b=0;
                  });
            }),
          ),
        ],
      ),
    );
  }
}
