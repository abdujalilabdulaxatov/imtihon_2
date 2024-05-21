import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginSignButton extends StatelessWidget {
  final String name;
  final Function() onPress;
  LoginSignButton({super.key, required this.name, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: 200,
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 0,
            sigmaY: 2,
          ),
          child: Center(
              child: Text(
            name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          )),
        ),
      ),
    );
  }
}

class Compaina extends StatelessWidget {
  const Compaina({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('images/google.png'),
          width: 50,
          height: 50,
        ),
        Image(
          image: AssetImage('images/facebook.png'),
          width: 50,
          height: 50,
        ),
        Image(
          image: AssetImage('images/finger.png'),
          width: 50,
          height: 50,
        ),
      ],
    );
  }
}
