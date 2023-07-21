import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberAnimation extends StatelessWidget {
  const NumberAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '10+',
            textAlign: TextAlign.left,
            style: GoogleFonts.openSans(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 3),
            child: Text(
              'Years of Experience',
              style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,),
            ),
          )
        ]);
  }
}
