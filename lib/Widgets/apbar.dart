import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: Color.fromRGBO(126, 253, 208, 1),
        child: Column(
          children:[
            AppBar(
              iconTheme: IconThemeData(
                color: Color.fromRGBO(18, 27, 25, 1) // <-- SEE HERE
              ),
              centerTitle: true,
              title: Image.asset('assets/images/appbaricon.png',height: 24,width: 134,),
              backgroundColor: Color.fromRGBO(126, 253, 208, 1),
            ),
          ],
        ),
      ),
    );
  }
}
