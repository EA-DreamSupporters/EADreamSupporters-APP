import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TestimonialCard {
  final String name;
  final String message;
  final String image;
  final double rating;

  TestimonialCard(
      {required this.name,
      required this.message,
      required this.image,
      required this.rating});
}

class Testimonial extends StatelessWidget {
  Testimonial({super.key});

  final List<TestimonialCard> testimonials = [
    TestimonialCard(
      name: "Vignesh",
      message:
          "Shopping online is excellent. You benefit from this because when you book any purchase online, you can save hundreds or even thousands of rupees. This is a very successful and admirable idea for our nation. You all benefit from this capability of conducting online purchases because, at the very least, original online products are available.",
      image: "assets/testimonial3.jpg",
      rating: 4.5,
    ),
    TestimonialCard(
      name: "Janani Durga",
      message:
          "Due to its excellent design, this app is completely user-friendly. With the help of this site, I've purchased five books, all of which I adore. I also received a fair discount on those books. The content of the books is exactly as advertised on this page! Therefore, I urge all book lovers to visit this website; they will undoubtedly enjoy it.",
      image: "assets/testimonial4.jpg",
      rating: 4,
    ),
    TestimonialCard(
      name: "Abinaya",
      message:
          "I placed an order for a 650 rupee book. I soon received my order. The vendor gave me a good reply to my message. They are outstanding. I intend to regularly buy books from this website.",
      image: "assets/testimonial5.jpg",
      rating: 3,
    ),
    TestimonialCard(
      name: "Mathesh Ravichander",
      message:
          "I've had  positive experiences with it. Every book fan would adore this website . I recently learned about this website. They display the book's price and also offer a sizable discount. And this is where you might locate the most uncommon books that are difficult to find elsewhere.",
      image: "assets/testimonial6.jpg",
      rating: 2,
    ),
    // Add more testimonials as needed...
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(164, 238, 238, 238),
      height: 540,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 35),
          Text(
            'Customer Testimonial',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 26, 22, 104),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
            child: Text(
              'Here are some testimonials from our clients that have experienced our services.',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 15),
          Column(
            children: [
              Container(
                height: 362, // Adjust the height as needed
                child: PageView.builder(
                  itemCount: testimonials.length,
                  itemBuilder: (BuildContext context, int index) {
                    return buildTestimonialCard(testimonials[index]);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTestimonialCard(TestimonialCard testimonial) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image:
                        DecorationImage(image: AssetImage(testimonial.image)),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 142, bottom: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        print('pressed');
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.quoteRight,
                        color: Color.fromARGB(255, 234, 165, 81),
                        size: 80,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            testimonial.message,
            textAlign: TextAlign.start,
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.start,
                testimonial.name,
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 26, 22, 104),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Icon(FontAwesomeIcons.solidStar,
                      color: testimonial.rating >= i + 1
                          ? Color.fromARGB(255, 234, 165, 81)
                          : Colors.grey[400],
                      size: 20),
                )
            ],
          )
        ],
      ),
    );
  }
}
