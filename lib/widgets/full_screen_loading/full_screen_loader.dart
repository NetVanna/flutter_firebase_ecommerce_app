import 'package:ecommerce_app/data/repository_authentication/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'animated_loader_widget.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              AnimationLoaderWidget(text: text,animation: animation,),
            ],
          ),
        ),
      ),
    );
  }
  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}
