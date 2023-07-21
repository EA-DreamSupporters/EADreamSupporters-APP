import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 15),
          child: Text(
            'EA Dream Supporters is the Best Choice for "Aspirants"',
            style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 26, 22, 104),
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, left: 15),
          child: Text(
            '''EA Dream Supporters is an ED-Tech business that began to care about the career aspirations of Indian youngsters. Numerous youths struggled to locate the appropriate resources and opportunities for their dream. So EA creates Dream Supporting Services, a unique one-stop portal for competitive test preparation. We support youth by acting as a prodding force for their desired course.''',
            textAlign: TextAlign.left,
            style: GoogleFonts.openSans(
              
                color: Colors.grey, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(255, 234, 165, 81),
              ),
            ),
            child: Text('Contact us'),
          ),
        )
      ],
    );
  }
}
