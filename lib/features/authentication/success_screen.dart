import 'package:ecommerce_app/features/authentication/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreenAuthentication extends StatelessWidget {
  const SuccessScreenAuthentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              Image(
                image: const AssetImage(
                    "assets/images/pablita-big-blue-tick.gif"),
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              const SizedBox(height: 32),
              const Text(
                "Your account successfully created!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "Welcome to your Ultimate Shopping Destination: Your Account is Created, Unleash the Joy of Seamless Online Shopping!",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const LoginScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(15)),
                  child: const Text("Continues"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
