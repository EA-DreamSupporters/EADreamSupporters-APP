import 'package:eads/Screens/HomeScreen/HomeScreen_Elements/Hero_Btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroArea extends StatelessWidget {
  const HeroArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "WELCOME TO",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.white,
                    letterSpacing: 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0, left: 15.0),
                child: Text(
                  'EA Dream Supporters',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 26, 22, 104),
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'A One Stop Destination of your Competative Exam Preparation. Let'
                  's start your preparation with EA Dream Supporters.',
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
        HeroBtn(),
        Container(
          width: double.infinity,
          height: 365,
          child: Image.asset(
            'assets/banner-media.png',
            scale: 2.3,
            alignment: Alignment.bottomLeft,
          ),
        ),
      ],
    );
  }
}
