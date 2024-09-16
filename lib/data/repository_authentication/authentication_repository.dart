import 'package:ecommerce_app/features/authentication/login_screen.dart';
import 'package:ecommerce_app/features/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {
    // start for debug
    if(kDebugMode){
      print("==============================GET STORAGE======================");
      print(deviceStorage.read('isFirstTime'));
    }
    // End For Debug
    deviceStorage.writeIfNull("isFirstTime", true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }
}
