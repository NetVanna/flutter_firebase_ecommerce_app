import 'package:ecommerce_app/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
