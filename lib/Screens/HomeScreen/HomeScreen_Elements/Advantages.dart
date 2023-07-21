import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Advantage extends StatelessWidget {
  const Advantage({super.key});

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
              'Our Credibility',
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
                  FontAwesomeIcons.bolt,
                ),
                onPressed: () {
                  print('pressed');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Quick Delivery',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 26, 22, 104),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'This is the only place where you can get all of your favourite books at the lowest prices with the fastest shipping. Deliveries must be made within a short period of time.',
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
                  FontAwesomeIcons.shield,
                ),
                onPressed: () {
                  print('pressed');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Secure Payment',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 26, 22, 104),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'With the product and service we get from secure instant payments, we are very happy. you can pay money through online payment or cash on delivey . It is entirely secure.',
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
                  FontAwesomeIcons.solidThumbsUp,
                ),
                onPressed: () {
                  print('pressed');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Best Quality',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 26, 22, 104),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'It makes no difference how much something costs if it is of poor quality. Due to the fact that this is our slogan, we only offer high-quality products.',
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
                  FontAwesomeIcons.solidStar,
                ),
                onPressed: () {
                  print('pressed');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Return Guarantee',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 26, 22, 104),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'If you have any problems with our delivery, please get in touch with us because we'
                're willing to accept returns. We also offer refunds. So don'
                't worry about it.',
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
