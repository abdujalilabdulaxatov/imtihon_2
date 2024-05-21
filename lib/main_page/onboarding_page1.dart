import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imtihon/main_page/onboarding_page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Color primaryColor = Color(
    0xffE2F163,
  );

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => Page2())));
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/image1.jpeg'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to',
                style: TextStyle(
                    color: primaryColor,
                    fontSize: screenW * 0.05,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                margin: EdgeInsets.only(top: screenH * 0.01),
                height: screenH * 0.1,
                child: const Image(
                  image: AssetImage(
                    'images/fb.png',
                  ),
                  width: 400,
                ),
              ),
              Container(
                height: screenH * 0.1,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'FIT',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: primaryColor,
                              fontSize: screenH * 0.07,
                              fontWeight: FontWeight.w800,
                              fontStyle: FontStyle.italic))),
                  TextSpan(
                    text: 'BODY',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: primaryColor,
                          fontSize: screenH * 0.07,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
