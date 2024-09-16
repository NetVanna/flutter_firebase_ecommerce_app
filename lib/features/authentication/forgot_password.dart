import 'package:ecommerce_app/features/authentication/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Forget Password",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              "Don't worry sometimes people can forget too, enter your email and we will send you a password reset Link.",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 50),
            TextFormField(
              decoration: InputDecoration(
                label: const Text("E-Mail"),
                prefixIcon: const Icon(Iconsax.direct_right),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const ResetPassword());
                },
                style: ElevatedButton.styleFrom(
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(15),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white),
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
