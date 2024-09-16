
import 'package:flutter/material.dart';

import '../../utils/constants/image_string.dart';
import '../onboarding_screen/onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(CustomImage.splashScreen),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    splashScreen();
  }

  Future splashScreen() async {
    await Future.delayed(const Duration(milliseconds: 2500));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const OnBoardingScreen(),
      ),
    );
  }
}
