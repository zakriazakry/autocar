import 'dart:async';

import 'package:autocars/UI/pages/login&singup/login.dart';
import 'package:autocars/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  scheduleTimeout() async {
    Timer(const Duration(seconds: 1), () {
      Navigator.pop(context);

      Navigator.of(context).push(PageAnimationTransition(
          page: const Loginpage(),
          pageAnimationType: RightToLeftFadedTransition()));
    });
  }

  @override
  void initState() {
    scheduleTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      body: Center(
        child: Image.asset("assets/images/onscreen.png"),
      ),
    );
  }
}
