import 'package:first_task_s/Widgets/apbar.dart';
import 'package:first_task_s/Widgets/profilepic.dart';
import 'package:first_task_s/Widgets/custom_text.dart';
import 'package:first_task_s/Widgets/rectangle_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 13,
            ),
            ProfilePicture(),
            // Image.asset("assets/images/Mathew Robinson.png")
            Text("Mathew Robinson",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 7,
            ),
            Text("Creative Director",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(fontSize: 15))),
            const SizedBox(
              height: 5,
            ),
            CustomSmallText("Looking For"),
            CustomLargeText(
                "Bring to the table win-win survival strategies to ensure proactive. At the end of the day, a new normal that has evolved into innovative construction for car enthusiests in the wild west "),
            CustomSmallText("About me"),
            CustomLargeText(
              "Leverage agile frameworks to provide a robust test for high level overviews. Iterative approaches to corporate strategy foster collaborative timing.",),
            CustomSmallText("Ideal Contacts"),
            Row(children: [TextInRectangle("Art","art.png"),TextInRectangle("Manufactures","factory.png")],),
            Row(children: [TextInRectangle("Programmers","gaming.png"),TextInRectangle("Gaming","gaming.png")],),
            Row(children: [TextInRectangle("Advertising","advertising.png"),TextInRectangle("Construction","construction.png")],),
            Row(children: [TextInRectangle("Crypto","crypto.png"),TextInRectangle("Finance","crypto.png")],)
          ],
        ),
      ),
    );
  }
}
