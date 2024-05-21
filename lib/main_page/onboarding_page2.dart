import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon/login_sign/login.dart';
import 'package:imtihon/main_page/widgets/onboarding_pages.dart';
import 'package:imtihon/main_page/widgets/widgets.dart';

class Page2 extends StatelessWidget {
  Color primaryColor = Color(
    0xffE2F163,
  );
  Page2({super.key});

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          OnboardingPage(
            imageLink: 'images/image2.png',
            iconLink: 'images/run.png',
            words: 'Start Your Journey Towards A More Active Lifestyle',
            num: 1,
            nextPage: () {
              pageController.nextPage(
                  duration: Duration(seconds: 1), curve: Curves.easeInOut);
            },
            endPage: () {
              pageController.jumpToPage(3);
            },
            buttonName: 'Next',
          ),
          OnboardingPage(
            imageLink: 'images/image3.png',
            iconLink: 'images/apple.png',
            words: 'Find Nutrition Tips That Fit Your Lifestyle',
            num: 2,
            nextPage: () {
              pageController.nextPage(
                  duration: Duration(seconds: 1), curve: Curves.easeInOut);
            },
            endPage: () {
              pageController.jumpToPage(3);
            },
            buttonName: 'Next',
          ),
          OnboardingPage(
            imageLink: 'images/image4.png',
            iconLink: 'images/community.png',
            words: 'A Community For You, Challenge Yourself',
            num: 3,
            nextPage: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: ((context) => Login())));
            },
            endPage: () {},
            buttonName: 'Get Started',
          ),
        ],
      ),
    );
  }
}
