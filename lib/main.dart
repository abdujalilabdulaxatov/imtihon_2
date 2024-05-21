import 'package:flutter/material.dart';
import 'package:imtihon/home/home_screen.dart';
import 'package:imtihon/login_sign/login.dart';
import 'package:imtihon/main_page/onboarding_page1.dart';
import 'package:imtihon/main_page/widgets/onboarding_pages.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Page1());
  }
}
