import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'NumberAnimation.dart';

class ServiceTick extends StatelessWidget {
  const ServiceTick({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 8, left: 10),
                    alignment: Alignment.topLeft,
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 165, 81),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: NumberAnimation(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.check,
                            color: Color.fromARGB(255, 234, 165, 81),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 3),
                          child: Text(
                            'Books & Materials',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.check,
                            color: Color.fromARGB(255, 234, 165, 81),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 3),
                          child: Text(
                            'Subscription',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.check,
                            color: Color.fromARGB(255, 234, 165, 81),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 3),
                          child: Text(
                            'EA Guidance',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.check,
                            color: Color.fromARGB(255, 234, 165, 81),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 3),
                          child: Text(
                            'Self Preparation',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
