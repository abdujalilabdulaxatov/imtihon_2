import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  final String imageLink;
  final String iconLink;
  final String words;
  final int num;
  final Function() nextPage;
  final Function() endPage;
  final String buttonName;
  OnboardingPage({
    super.key,
    required this.imageLink,
    required this.iconLink,
    required this.words,
    required this.num,
    required this.nextPage,
    required this.endPage,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    // create primary color
    Color primaryColor = const Color(
      0xffE2F163,
    );
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    // view page containers
    Widget views(int num) {
      return Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            width: screenW * 0.06,
            height: 5,
            decoration: BoxDecoration(
                color: num == 1 ? Colors.white : Color(0xff896CFE),
                borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            width: screenW * 0.06,
            height: 5,
            decoration: BoxDecoration(
                color: num == 2 ? Colors.white : Color(0xff896CFE),
                borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            width: screenW * 0.06,
            height: 5,
            decoration: BoxDecoration(
                color: num == 3 ? Colors.white : Color(0xff896CFE),
                borderRadius: BorderRadius.circular(15)),
          ),
        ],
      );
    }

    return Container(
      width: screenW,
      height: screenH,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imageLink), fit: BoxFit.cover)),
      child: Column(
        children: [
          Gap(screenH * 0.08),
          // skip button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: endPage,
                  child: Row(
                    children: [
                      Text('Skip',
                          style: GoogleFonts.leagueSpartan(
                              textStyle: TextStyle(
                                  fontSize: screenW * 0.04,
                                  color: primaryColor))),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: primaryColor,
                        size: screenW * 0.06,
                      ),
                    ],
                  )),
            ],
          ),

          Gap(screenH * 0.28),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            width: screenW,
            height: screenH * 0.18,
            decoration: BoxDecoration(color: Color(0xffB3A0FF)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(
                    iconLink,
                  ),
                  width: screenW * 0.1,
                ),
                Text(
                  words,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenW * 0.05,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    views(num),
                  ],
                )
              ],
            ),
          ),
          const Gap(20),
          InkWell(
            onTap: nextPage,
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: screenW * 0.5,
              height: 44,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0, sigmaY: 2),
                child: Center(
                    child: Text(
                  buttonName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: screenH * 0.02),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
