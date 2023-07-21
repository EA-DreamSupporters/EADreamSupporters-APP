import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurMissionBox extends StatelessWidget {
  const OurMissionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1150,
      color: Colors.grey.shade200,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Our Mission',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 26, 22, 104),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'We cultivate a culture that supports our mission. We uphold that honesty toward our clients, coworkers, workplace, & neighbourhood.',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),

          //#CARD 1
          SizedBox(
            height: 40,
          ),
          Container(
            height: 260,
            width: 340,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Card(
              elevation: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: SvgPicture.asset(
                      'assets/openBooks.svg',
                      height: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Finest Bookstore',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 26, 22, 104),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Text(
                      'Not only do we offer discounted used books, but we also guarantee their quality. Each volume is handled directly by our member, who also handles shipment and book preservation.',
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: GoogleFonts.openSans(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),

          //#CARD 2
          SizedBox(
            height: 40,
          ),
          Container(
            height: 260,
            width: 340,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Card(
              elevation: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: SvgPicture.asset(
                      'assets/Badge.svg',
                      height: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Reliable Seller',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 26, 22, 104),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Text(
                      'Between buyer and seller, selling is a sacred trust. You can trust us because we only offer high-quality products.When your product is delivered, you should be fully aware of what to anticipate.',
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: GoogleFonts.openSans(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),

          //#CARD 3
          SizedBox(
            height: 40,
          ),
          Container(
            height: 260,
            width: 340,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Card(
              elevation: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: SvgPicture.asset(
                      'assets/Shop.svg',
                      height: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Countless Collections',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 26, 22, 104),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Text(
                      'We have a  huge collection of books in many different categories, including Fiction, non-fiction, biographies, history, and religion and sizable selection of text books for educational institutions.',
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: GoogleFonts.openSans(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
