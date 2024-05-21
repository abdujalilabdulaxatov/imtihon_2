import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imtihon/home/home_screen.dart';
import 'package:imtihon/home/widgets.dart';
import 'package:imtihon/resources_page/resources_page2.dart';

class Resources extends StatelessWidget {
  const Resources({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xffE2F163);
    Color primaryColor2 = Color(0xff896CFE);

    return Scaffold(
      backgroundColor: Color(0xff232323),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => HomeScreen())));
                              },
                              icon: Icon(
                                Icons.arrow_left_sharp,
                                color: primaryColor,
                                size: 30,
                              )),
                          Text('Resources',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xff896CFE)),
                              )),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.search,
                                size: 25,
                                color: Color(0xff896CFE),
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_sharp,
                                size: 25,
                                color: Color(0xff896CFE),
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.person_fill,
                                size: 25,
                                color: Color(0xff896CFE),
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 175,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: primaryColor),
                        child: Center(
                          child: Text(
                            'Workout Videos',
                            style: GoogleFonts.leagueSpartan(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 17)),
                          ),
                        ),
                      ),
                      Container(
                        width: 175,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            'Articles & Tips',
                            style: GoogleFonts.leagueSpartan(
                                textStyle: TextStyle(
                                    color: primaryColor2,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(30),
                  Text(
                    'Quick & Easy Workout Videos',
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(color: primaryColor, fontSize: 20)),
                  ),
                  Text(
                    'Discover Fresh Workouts: Elevate Your Training',
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                  Gap(30),
                  Container(
                    width: double.infinity,
                    height: 560,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Resources2(
                                              link: 'images/image5.png',
                                              name: 'Loop Band Exercise'))));
                                },
                                child: Recommendations(
                                    name: 'Loop Band Exercise',
                                    link: 'images/image5.png'),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Resources2(
                                              link: 'images/image4.png',
                                              name:
                                                  'Workouts For Beginners'))));
                                },
                                child: Recommendations(
                                    name: "Workouts For Beginners",
                                    link: 'images/image4.png'),
                              ),
                            ],
                          ),
                          Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Resources2(
                                              link: 'images/image5.png',
                                              name: 'Full Body Stretch'))));
                                },
                                child: Recommendations(
                                    name: 'Full Body Stretch',
                                    link: 'images/image5.png'),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Resources2(
                                              link: 'images/image5.png',
                                              name: 'Low Impact Workouts'))));
                                },
                                child: Recommendations(
                                    name: "Low Impact Workouts",
                                    link: 'images/image4.png'),
                              ),
                            ],
                          ),
                          Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Resources2(
                                              link: 'images/image5.png',
                                              name: 'Strength Training'))));
                                },
                                child: Recommendations(
                                    name: 'Strength Training',
                                    link: 'images/image5.png'),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Resources2(
                                              link: 'images/image5.png',
                                              name:
                                                  'Split Squats Vs Lunges'))));
                                },
                                child: Recommendations(
                                    name: "Split Squats Vs Lunges",
                                    link: 'images/image4.png'),
                              )
                            ],
                          ),
                          Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Resources2(
                                              link: 'images/image5.png',
                                              name: 'Squat Exercise'))));
                                },
                                child: Recommendations(
                                    name: 'Squat Exercise',
                                    link: 'images/image5.png'),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Resources2(
                                              link: 'images/image5.png',
                                              name: 'Full Body Streching'))));
                                },
                                child: Recommendations(
                                    name: "Full Body Streching",
                                    link: 'images/image4.png'),
                              )
                            ],
                          ),
                          Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Resources2(
                                              link: 'images/image5.png',
                                              name: 'Loop Band Exercise'))));
                                },
                                child: Recommendations(
                                    name: 'Squat Exercise',
                                    link: 'images/image5.png'),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Resources2(
                                              link: 'images/image5.png',
                                              name: 'Loop Band Exercise'))));
                                },
                                child: Recommendations(
                                    name: "Full Body Streching",
                                    link: 'images/image4.png'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomBar()
          ],
        ),
      )),
    );
  }
}
