import 'package:flutter/material.dart';

class DrawerBtn extends StatelessWidget {
  const DrawerBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 234, 165, 81),
              borderRadius: BorderRadius.circular(6)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
              child: Container(
                width: 22,
                height: 2,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, top: 3),
              child: Container(
                width: 25,
                height: 2,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 5),
              child: Container(
                width: 20,
                height: 2,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(1)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
