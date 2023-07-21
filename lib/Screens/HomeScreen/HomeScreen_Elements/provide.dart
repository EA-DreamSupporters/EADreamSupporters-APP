import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceProvide extends StatelessWidget {
  const ServiceProvide({super.key});

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
              'What We Provide For You?',
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
              child: IconButton(
                color: Color.fromARGB(255, 234, 165, 81),
                hoverColor: Color.fromARGB(255, 26, 22, 104).withOpacity(0.3),
                icon: FaIcon(
                  size: 30,
                  FontAwesomeIcons.book,
                ),
                onPressed: () {
                  print('pressed');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Books & Materials',
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
                'We provide a wide variety of books in different genres & student reference books.',
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
              child: IconButton(
                color: Color.fromARGB(255, 234, 165, 81),
                hoverColor: Color.fromARGB(255, 26, 22, 104).withOpacity(0.3),
                icon: FaIcon(
                  size: 30,
                  FontAwesomeIcons.rocket,
                ),
                onPressed: () {
                  print('pressed');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Magazine Subscription',
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
                'If you subscribe to our package, we will send you pertinent magazines on a regular basis.',
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
              child: IconButton(
                color: Color.fromARGB(255, 234, 165, 81),
                hoverColor: Color.fromARGB(255, 26, 22, 104).withOpacity(0.3),
                icon: FaIcon(
                  size: 30,
                  FontAwesomeIcons.graduationCap,
                ),
                onPressed: () {
                  print('pressed');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'EA Guidance',
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
                'You will advance to the next level with our guidance. You can learn more about the best things.',
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
              child: IconButton(
                color: Color.fromARGB(255, 234, 165, 81),
                hoverColor: Color.fromARGB(255, 26, 22, 104).withOpacity(0.3),
                icon: FaIcon(
                  size: 30,
                  FontAwesomeIcons.bookOpenReader,
                ),
                onPressed: () {
                  print('pressed');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Self Preparation',
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
                'One important key to your success is education. An important key to your education is self-preparation.',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        )
      ],
    );
  }
}
