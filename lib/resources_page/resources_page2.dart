import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imtihon/home/widgets.dart';
import 'package:imtihon/resources_page/resources.dart';

class Resources2 extends StatelessWidget {
  final String link;
  final String name;
  Resources2({super.key, required this.link, required this.name});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xffE2F163);
    Color primaryColor2 = Color(0xff896CFE);

    Widget rounds(String name, String time, String repetition, Color kolor) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: kolor),
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow_rounded,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.time_solid,
                          color: primaryColor2,
                          size: 15,
                        ),
                        Text(
                          time,
                          style: TextStyle(color: primaryColor2, fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Text(
              'Repetition $repetition',
              style: TextStyle(fontSize: 17, color: primaryColor2),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff232323),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                                      builder: ((context) => Resources())));
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
          Gap(15),
          Container(
            width: double.infinity,
            height: 220,
            color: primaryColor2,
            child: Center(
                child: Stack(
              children: [
                Container(
                  width: 350,
                  height: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(link), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber),
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: 350,
                      height: 45,
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text(
                                '● 45 Minuts',
                                style: GoogleFonts.leagueSpartan(
                                    textStyle: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                              ),
                              Gap(20),
                              const Icon(
                                Icons.local_fire_department_rounded,
                                color: Colors.white,
                                size: 12,
                              ),
                              Text(
                                ' 70 Kcal',
                                style: GoogleFonts.leagueSpartan(
                                    textStyle: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                              ),
                              Gap(30),
                              Icon(
                                Icons.directions_run_sharp,
                                color: Colors.white,
                                size: 12,
                              ),
                              Text(
                                ' 5 Exercise',
                                style: GoogleFonts.leagueSpartan(
                                    textStyle: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            )),
          ),
          Gap(25),
          Container(
            height: 450,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Round 1',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Gap(15),
                  rounds('Arm Circles', ' 00:30', '3x', primaryColor2),
                  Gap(15),
                  rounds('Bicp Curls', ' 00:15', '2x', primaryColor2),
                  Gap(15),
                  rounds('Lateral Band Walks', ' 000:15', '2x', primaryColor),
                  Gap(30),
                  Text(
                    'Round 2',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Gap(20),
                  rounds('Lateral Band Walks', ' 000:15', '2x', primaryColor),
                  Gap(15),
                  rounds('Arm Circles', ' 00:30', '3x', primaryColor2),
                  Gap(15),
                  rounds('Bicp Curls', ' 00:15', '2x', primaryColor2)
                ],
              ),
            ),
          ),
          BottomBar()
        ],
      )),
    );
  }
}
