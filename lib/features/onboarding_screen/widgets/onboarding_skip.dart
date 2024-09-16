
import 'package:flutter/material.dart';

import '../controller_onboarding/onboarding_controller.dart';


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: 20,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: const Text("Skip",style: TextStyle(fontSize: 18),),
      ),
    );
  }
}