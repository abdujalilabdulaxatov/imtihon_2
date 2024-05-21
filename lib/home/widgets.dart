import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imtihon/home/home_screen.dart';
import 'package:imtihon/resources_page/resources.dart';

class Recommendations extends StatelessWidget {
  final String name;
  final String link;
  Color primaryColor = Color(0xffE2F163);

  Recommendations({super.key, required this.name, required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(link), fit: BoxFit.cover)),
              ),
              Positioned(
                  right: 0,
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star_rate_rounded,
                            color: Colors.white,
                            size: 30,
                          )),
                      Gap(25),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 129, 97, 255),
                        ),
                        child: const Center(
                            child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 20,
                        )),
                      ),
                    ],
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: primaryColor, fontSize: 12),
                    )),
                Gap(5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.time_solid,
                          color: Color.fromARGB(255, 129, 97, 255),
                          size: 14,
                        ),
                        Text(
                          '12 Minutes',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.local_fire_department,
                          color: Color.fromARGB(255, 129, 97, 255),
                          size: 20,
                        ),
                        Text(
                          '120 Kcal',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ArticleTips extends StatelessWidget {
  final String name;
  final String link;

  ArticleTips({super.key, required this.name, required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(link), fit: BoxFit.cover)),
              ),
              Positioned(
                  right: 0,
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star_rate_rounded,
                            color: Colors.white,
                            size: 30,
                          )),
                    ],
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                Gap(5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(backgroundColor: Color(0xffB3A0FF), destinations: [
      NavigationDestination(
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => HomeScreen()));
            },
            icon: Container(
              width: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/home.png'))),
            ),
          ),
          label: ''),
      NavigationDestination(
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => Resources()));
            },
            icon: Container(
              width: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/resources.png'))),
            ),
          ),
          label: ''),
      NavigationDestination(
          icon: IconButton(
            onPressed: () {},
            icon: Container(
              width: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/star.png'))),
            ),
          ),
          label: ''),
      NavigationDestination(
          icon: IconButton(
            onPressed: () {},
            icon: Container(
              width: 50,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('images/support.png'))),
            ),
          ),
          label: ''),
    ]);
  }
}
