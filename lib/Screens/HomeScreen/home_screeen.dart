import 'package:drop_shadow/drop_shadow.dart';
import 'package:eads/Screens/HomeScreen/HomeScreen_Elements/Logo_area.dart';
import 'package:eads/Screens/HomeScreen/HomeScreen_Elements/ProductScroller.dart';
import 'package:eads/Screens/HomeScreen/HomeScreen_Elements/service_tag.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomeScreen_Elements/Advantages.dart';
import 'HomeScreen_Elements/Examtypes.dart';
import 'HomeScreen_Elements/NumberAnimation.dart';
import 'HomeScreen_Elements/descrip.dart';
import 'HomeScreen_Elements/ourmission.dart';
import 'HomeScreen_Elements/pageview.dart';
import 'HomeScreen_Elements/provide.dart';
import 'HomeScreen_Elements/rentalbooks.dart';
import 'HomeScreen_Elements/testimonial.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 80,
          title: AppLogoButton(),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                AnimatedPageView(),
                Container(
                  width: double.infinity,
                  child: DropShadow(
                    blurRadius: 10,
                    child: Image.asset(
                      'assets/about3.png',
                      width: double.infinity,
                    ),
                  ),
                ),
                ServiceTick(),
                Description(),
                ServiceProvide(),
                OurMissionBox(),
                ExamType(),
                ProductScrl(),
                RentalScrl(),
                Testimonial(),
                Advantage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
