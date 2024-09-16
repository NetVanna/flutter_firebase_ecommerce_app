import 'package:ecommerce_app/features/authentication/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../navigation_menu.dart';
import '../../utils/constants/image_string.dart';
import 'forgot_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) {
      return Theme.of(context).brightness == Brightness.dark;
    }

    final dark = isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(CustomImage.splashScreen),
                    height: 150,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and "
                    "typesetting industry",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        label: const Text("E-Mail"),
                        prefixIcon: const Icon(Iconsax.direct_right),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        label: const Text("Password"),
                        prefixIcon: const Icon(Iconsax.password_check),
                        suffixIcon: const Icon(Iconsax.eye_slash),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text("Remember Me")
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(const ForgotPassword());
                          },
                          child: const Text("Forgot Password"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const NavigationMenu());
                        },
                        style: ElevatedButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(15),
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white),
                        child: const Text("Sign In"),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(const SignUpScreen());
                        },
                        style: OutlinedButton.styleFrom(
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(15),
                        ),
                        child: const Text(
                          "Create Account",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                  ),
                  Text(
                    "Or Sign in With",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage("assets/logos/google.png"),
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage("assets/logos/facebook.png"),
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
