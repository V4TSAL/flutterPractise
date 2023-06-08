import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(96);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: Color.fromRGBO(126, 253, 208, 1),
        child: Column(
          children: [
            SizedBox(height: 40),
            AppBar(
              centerTitle: true,
              title: Image.asset('assets/images/default.png'),
              backgroundColor: Color.fromRGBO(126, 253, 208, 1),
            ),
          ],
        ),
      ),
    );
  }
}
