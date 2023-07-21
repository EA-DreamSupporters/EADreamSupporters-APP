import "dart:async";

import "package:flutter/material.dart";

import "package:google_fonts/google_fonts.dart";

class Book {
  final String title;
  final String image;
  final double price;

  Book({required this.title, required this.image, required this.price});
}

class ProductScrl extends StatefulWidget {
  const ProductScrl({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductScrlState createState() => _ProductScrlState();
}

class _ProductScrlState extends State<ProductScrl> {
  final List<Book> _books = [
    Book(title: "Book 1", image: "assets/Book1.jpg", price: 19.99),
    Book(title: "Book 2", image: "assets/Book2.jpg", price: 24.99),
    Book(title: "Book 3", image: "assets/Book3.jpg", price: 14.99),
  ];

  late ScrollController _scrollController;
  int _currentIndex = 1;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _startScrollTimer();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startScrollTimer() {
    const Duration scrollDuration = Duration(seconds: 10);
    _timer = Timer.periodic(scrollDuration, (_) {
      _scrollToNextBook();
    });
  }

  void _scrollToNextBook() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % (_books.length * 1000);
      _scrollController.animateTo(
        _currentIndex * 256, // Width of each book widget + padding
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color.fromARGB(164, 238, 238, 238),
          height: 714,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  'Our Recommended Products',
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
                  'The products offered as product recommendations are comparable to those that are preferred by other online shoppers. There are numerous new arrivals, some of which may end up being best-sellers.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                height: 486.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    Container(
                      alignment: AlignmentDirectional.topCenter,
                      height: 470,
                      width: 340,
                      child: ListView.builder(
                          controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            final bookIndex = index % _books.length;
                            final book = _books[bookIndex];
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: AlignmentDirectional.topStart,
                                    height: 347,
                                    width: 247,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        image: AssetImage(book.image),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 8),
                                      Text(
                                        book.title,
                                        style: GoogleFonts.poppins(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromARGB(255, 26, 22, 104),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        '\$${book.price.toStringAsFixed(2)}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromARGB(255, 234, 165, 81),
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(0),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            Color.fromARGB(255, 26, 22, 104),
                                          ),
                                        ),
                                        onPressed: () {
                                          // Handle View Details button click
                                          print(
                                              'View Details button tapped for ${book.title}');
                                        },
                                        child: Text('View Details'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
