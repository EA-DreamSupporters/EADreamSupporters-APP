import 'package:eads/Screens/HomeScreen/HomeScreen_Elements/Drawer_button.dart';
import 'package:flutter/material.dart';

class AppLogoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/logo.png",
          width: 256.1600036621094,
          height: 56,
        ),
        DrawerBtn()
      ],
    );
  }
}
