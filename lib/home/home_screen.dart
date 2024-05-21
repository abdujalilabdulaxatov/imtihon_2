import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imtihon/home/widgets.dart';
import 'package:imtihon/resources_page/resources.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color primaryColor = Color(0xffE2F163);
  bool isDone = true;
  List<Map<String, dynamic>> lst = [
    {
      'image_true': 'images/shtanga_true.png',
      'image_false': 'images/shtanga_false.png',
      'name': 'Workout',
      'isDone': true,
    },
    {
      'image_true': 'images/lst_true.png',
      'image_false': 'images/lst_false.png',
      'name': 'Progress Tracking',
      'isDone': false,
    },
    {
      'image_true': 'images/apple_true.png',
      'image_false': 'images/apple_false.png',
      'name': 'Nutrition',
      'isDone': false,
    },
    {
      'image_true': 'images/community_true.png',
      'image_false': 'images/community_false.png',
      'name': 'Community',
      'isDone': false,
    },
  ];

  void checkIsDone() {
    for (int i = 0; i < lst.length; i++) {
      if (lst[i]['isDone'] == true) {
        lst[i]['isDone'] == false;
        print(lst[i]['isDone']);
      }
    }
  }

  Widget ikons(String link_true, String link_false, String name, bool isDone) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(isDone ? link_true : link_false))),
        ),
        Container(
          width: 70,
          child: Text(
            name,
            style: TextStyle(
                fontSize: 16,
                color: isDone ? Color(0xffE2F163) : Color(0xffB3A0FF)),
          ),
        ),
      ],
    );
  }

  Widget divider_vertical() {
    return Container(
      width: 1,
      height: 50,
      color: Color(0xffB3A0FF),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232323),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hi, Madison',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xff896CFE)),
                              )),
                          Text(
                            "It's Time To Challange Your Limits",
                            style: GoogleFonts.leagueSpartan(
                                textStyle: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                      Row(
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
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ikons(
                            lst[0]['image_true'],
                            lst[0]['image_false'],
                            lst[0]['name'],
                            lst[0]['isDone']),
                      ),
                      divider_vertical(),
                      InkWell(
                        onTap: () {},
                        child: ikons(
                            lst[1]['image_true'],
                            lst[1]['image_false'],
                            lst[1]['name'],
                            lst[1]['isDone']),
                      ),
                      divider_vertical(),
                      InkWell(
                        onTap: () {},
                        child: ikons(
                            lst[2]['image_true'],
                            lst[2]['image_false'],
                            lst[2]['name'],
                            lst[2]['isDone']),
                      ),
                      divider_vertical(),
                      InkWell(
                        onTap: () {},
                        child: ikons(
                            lst[03]['image_true'],
                            lst[03]['image_false'],
                            lst[03]['name'],
                            lst[03]['isDone']),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommendations',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text('See All',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14, color: Colors.white))),
                              Icon(
                                Icons.arrow_right_sharp,
                                color: primaryColor,
                                size: 22,
                              ),
                            ],
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Recommendations(
                          name: 'Squat Exercise', link: 'images/image5.png'),
                      Recommendations(
                          name: "Full Body Streching",
                          link: 'images/image4.png')
                    ],
                  ),
                ],
              ),
            ),
            Gap(20),
            Container(
              width: double.infinity,
              height: 180,
              color: Color(0xffB3A0FF),
              child: Center(
                child: Container(
                  width: 350,
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff232323)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 175,
                        child: Column(
                          children: [
                            Text(
                              'Weekly Challange',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 24, color: primaryColor)),
                            ),
                            Text(
                              'Plank With Hip Twist',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 12, color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 175,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/image2.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.amber),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Article& Tips',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ArticleTips(
                          name: 'Supplement Guide..',
                          link: 'images/image3.png'),
                      ArticleTips(
                          name: '15 Quick & Effective Daily Routines...',
                          link: 'images/image6.jpg'),
                    ],
                  )
                ],
              ),
            ),
            BottomBar(),
          ],
        ),
      )),
    );
  }
}
