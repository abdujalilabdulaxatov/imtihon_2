import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imtihon/home/home_screen.dart';
import 'package:imtihon/login_sign/create_account.dart';
import 'package:imtihon/login_sign/widgets.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final fromKey = GlobalKey<FormState>();

    String? email_error = null;
    String? password_error = null;

    bool checkEmailAndPassword() {
      GetkEmailPassword getEmailPassword = GetkEmailPassword(
          login_email: emailController.text,
          login_password: passwordController.text);
      bool response = getEmailPassword.check();
      return response;
    }

    Color primaryColor = Color(
      0xffE2F163,
    );
    return Scaffold(
      backgroundColor: Color(0xff232323),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => CreateAccount())));
                        },
                        icon: Icon(
                          Icons.arrow_left_sharp,
                          color: primaryColor,
                          size: 30,
                        ),
                      ),
                      Gap(115),
                      Text(
                        'Log In',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Gap(60),
                  const Center(
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Gap(30),
                  Container(
                      width: 350,
                      child: Text(
                        loremIpsum(words: 20),
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
            Gap(50),
            Form(
              key: fromKey,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 330,
                color: Color(0xffB3A0FF),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username or email',
                      style: GoogleFonts.leagueSpartan(
                          textStyle: TextStyle(fontSize: 18)),
                    ),
                    Container(
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter email';
                          } else if (!value.contains('@')) {
                            return 'Please enter valid email';
                          }
                          email = value;
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'example@example.com',
                            hintStyle: TextStyle(fontSize: 16),
                            fillColor: Colors.white,
                            filled: true,
                            errorText: email_error,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    Gap(10),
                    Text(
                      'Password',
                      style: GoogleFonts.leagueSpartan(
                          textStyle: TextStyle(fontSize: 18)),
                    ),
                    Container(
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          } else if (value.length <= 7) {
                            return 'Password length > 8';
                          }
                          password = value;
                          return null;
                        },
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            hintText: 'enter password',
                            hintStyle: TextStyle(fontSize: 16),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    // Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot password ?',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12)),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Gap(40),
            LoginSignButton(
                name: 'Log In',
                onPress: () {
                  if (fromKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HomeScreen())));
                  }
                }),
            Gap(30),
            Text(
              'or signup with',
              style: TextStyle(color: Colors.white),
            ),
            Gap(10),
            Compaina(),
            Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an acoount?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => CreateAccount())));
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
