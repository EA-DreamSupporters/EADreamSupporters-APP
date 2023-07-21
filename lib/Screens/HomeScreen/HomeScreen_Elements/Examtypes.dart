import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamType extends StatelessWidget {
  const ExamType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Start Preparation',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 26, 22, 104),
              ),
            ),

            //1st Service
            SizedBox(height: 50),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(65, 234, 165, 81),
              ),
              child: Image.asset(
                "assets/UPSC LOGO.png",
                scale: 8,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            'UPSC',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 26, 22, 104),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            'Numerous career prospects are made available through UPSC preparation.',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),

        //2nd Service
        SizedBox(height: 50),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromARGB(65, 234, 165, 81),
          ),
          child: Image.asset(
            "assets/SSCLogo.png",
            scale: 8,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            'SSC',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 26, 22, 104),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            'One of the highest-regarded positions in the country is one that is under the SSC.',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),

        //3rd Service
        SizedBox(height: 50),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromARGB(65, 234, 165, 81),
          ),
          child: Image.asset(
            "assets/Tnpsclogo.png",
            scale: 9,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            'TNPSC',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 26, 22, 104),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            'The exam is used to evaluate for several administrative and revenue sectors.',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),

        //4th Service
        SizedBox(height: 50),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromARGB(65, 234, 165, 81),
          ),
          child: Image.asset("assets/IBPSLogo.png"),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            'BANKING',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 26, 22, 104),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            'A job in banking offers a wide range of opportunities as well as rapid career growth.',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
