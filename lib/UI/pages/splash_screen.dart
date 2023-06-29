import 'dart:async';
import 'package:animated_widgets/widgets/opacity_animated.dart';
import 'package:animated_widgets/widgets/translation_animated.dart';
import 'package:autocars/UI/pages/login&singup/login.dart';
import 'package:autocars/consts/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // bool _showImage = false;

  scheduleTimeout() async {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => const Loginpage()),
          (Route<dynamic> route) => route is Loginpage);
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
        child: TranslationAnimatedWidget.tween(
          enabled: true,
          delay: const Duration(milliseconds: 1500),
          curve: Curves.easeInOut,
          translationDisabled: const Offset(0, 200),
          translationEnabled: const Offset(0, -100),
          child: OpacityAnimatedWidget.tween(
              enabled: true,
              opacityDisabled: 0,
              opacityEnabled: 1,
              child: Image.asset("assets/images/onscreen.png")),
        ),
      ),
    );
  }
}
