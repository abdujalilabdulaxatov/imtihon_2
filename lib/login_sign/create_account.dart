import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imtihon/login_sign/login.dart';
import 'package:imtihon/login_sign/widgets.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

String email = '';
String password = '';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    String? name_error = null;
    String? email_error = null;
    String? password_error = null;
    String? confirm_password_error = null;

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
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Login())));
                        },
                        icon: Icon(
                          Icons.arrow_left_sharp,
                          color: primaryColor,
                          size: 30,
                        ),
                      ),
                      Gap(60),
                      Text(
                        'Create Account',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Gap(40),
                  const Center(
                    child: Text(
                      "Let's Start!",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Gap(20),
                ],
              ),
            ),
            Form(
              key: formKey,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 505,
                color: Color(0xffB3A0FF),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full name',
                      style: GoogleFonts.leagueSpartan(
                          textStyle: TextStyle(fontSize: 18)),
                    ),
                    Container(
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'enter name',
                            hintStyle: TextStyle(fontSize: 16),
                            fillColor: Colors.white,
                            filled: true,
                            errorText: name_error,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    Gap(10),
                    Text(
                      'Email or Phone Number',
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
                            hintText: '+998912345678',
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
                            hintText: 'Create password',
                            hintStyle: TextStyle(fontSize: 16),
                            fillColor: Colors.white,
                            filled: true,
                            errorText: password_error,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    Gap(10),
                    Text(
                      'Confirm Password',
                      style: GoogleFonts.leagueSpartan(
                          textStyle: TextStyle(fontSize: 18)),
                    ),
                    Container(
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          } else if (confirmPasswordController.text !=
                              passwordController.text) {
                            return 'passwords are not the same';
                          }
                          return null;
                        },
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            hintText: 'confirm password',
                            hintStyle: TextStyle(fontSize: 16),
                            fillColor: Colors.white,
                            filled: true,
                            errorText: confirm_password_error,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(20),
            Text(
              'By continuing, you agree to',
              style: GoogleFonts.leagueSpartan(
                  textStyle: TextStyle(color: Colors.white)),
            ),
            RichText(
                text: TextSpan(
                    style: GoogleFonts.leagueSpartan(
                        textStyle: TextStyle(fontSize: 15)),
                    children: [
                  TextSpan(
                      text: 'Terms of Use',
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.w600)),
                  TextSpan(text: ' and '),
                  TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.w600)),
                ])),
            Gap(30),
            LoginSignButton(
                name: 'Sign Up',
                onPress: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Login())));
                  }
                }),
            Gap(30),
            const Text(
              'or signup with',
              style: TextStyle(color: Colors.white),
            ),
            Gap(10),
            Compaina(),
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
                    onPressed: () {},
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    )),
              ],
            )
          ],
        ),
      )),
    );
  }
}

class GetkEmailPassword {
  String login_email;
  String login_password;

  bool check() {
    if (login_email == email && login_password == password) {
      print(login_email);
      print(login_password);
      print(email);
      print(password);
      return true;
    } else {
      print(login_email);
      print(login_password);
      print(email);
      print(password);
      print('objecti');
      return false;
    }
  }

  GetkEmailPassword({required this.login_email, required this.login_password});
}
