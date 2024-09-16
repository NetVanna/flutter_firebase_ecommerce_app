import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../authentication/login_screen.dart';


class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();
  final pageController=PageController();

  Rx<int> currentIndexPage=0.obs;

  void updatePageIndicator(index){
    currentIndexPage.value=index;
  }

  void dotNavigationClick(index){
    currentIndexPage.value=index;
    pageController.jumpTo(index);
  }

  void nextPage(){
    if(currentIndexPage.value == 2){
      final storage = GetStorage();
      // start for debug
      if(kDebugMode){
        print("==============================GET STORAGE======================");
        print(storage.read('isFirstTime'));
      }
      // End for Debug
      storage.write('isFirstTime', false);
      Get.offAll(const LoginScreen());
    }else{
      int page=currentIndexPage.value+1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage(){
    Get.offAll(const LoginScreen());
  }
}