
import 'package:ecommerce_app/features/onboarding_screen/widgets/onboarding_navigation.dart';
import 'package:ecommerce_app/features/onboarding_screen/widgets/onboarding_nextbutton.dart';
import 'package:ecommerce_app/features/onboarding_screen/widgets/onboarding_page.dart';
import 'package:ecommerce_app/features/onboarding_screen/widgets/onboarding_skip.dart';
import 'package:ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_onboarding/onboarding_controller.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                images: CustomImage.onboardingScreen1,
                title: "Choose your product",
                subtitle:
                    "Welcome to a World of Limitless Choices - Your Perfect "
                        "Product Awaits!",
              ),
              OnBoardingPage(
                images: CustomImage.onboardingScreen2,
                title: "Select Payment Method",
                subtitle:
                    "For Seamless Transactions, Choose Your Payment Path - Your "
                        "Convenience, Our Priority!",
              ),
              OnBoardingPage(
                images: CustomImage.onboardingScreen3,
                title: "Deliver at your door step",
                subtitle:
                    "From Our Doorstep to Yours - Swift, Secure, and Contactless"
                        " Delivery!",
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}


