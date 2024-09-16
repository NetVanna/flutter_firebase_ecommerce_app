import 'package:ecommerce_app/features/authentication/controller/sign_up_controller.dart';
import 'package:ecommerce_app/features/authentication/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/validator/validation.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Let Create your Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: controller.signUpFormKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: controller.firstName,
                            validator: (value) => Validator.validateEmptyText(
                              "first name",
                              value,
                            ),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.person),
                              label: Text("First Name"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: controller.lastName,
                            validator: (value) => Validator.validateEmptyText(
                              "last name",
                              value,
                            ),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.person),
                              label: Text("Last Name"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: controller.userName,
                      validator: (value) => Validator.validateEmptyText(
                        "Username",
                        value,
                      ),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                        label: Text("Username"),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: controller.email,
                      validator: (value) => Validator.validateEmail(value),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                        label: Text("E-Mail"),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: controller.phoneNumber,
                      validator: (value) =>
                          Validator.validatePhoneNumber(value),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone_android),
                        label: Text("Phone Number"),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: controller.password,
                      validator: (value) => Validator.validatePassword(value),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.key),
                        label: Text("Password"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: "I agree to "),
                        TextSpan(
                          text: "Privacy Policy ",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue),
                        ),
                        TextSpan(text: "and "),
                        TextSpan(
                          text: "Terms of use",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    controller.signUp();
                  },
                  style: ElevatedButton.styleFrom(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(15),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  child: const Text("Create Account"),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      height: 12,
                      color: Colors.grey,
                      indent: 28,
                      endIndent: 28,
                    ),
                  ),
                  Text(
                    "Or Sign in With",
                    style: TextStyle(color: Colors.black.withOpacity(0.8)),
                  ),
                  const Expanded(
                    child: Divider(
                      height: 12,
                      color: Colors.grey,
                      indent: 18,
                      endIndent: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        "assets/logos/google.png",
                        width: 20,
                        height: 20,
                      )),
                  const SizedBox(
                    width: 7,
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        "assets/logos/facebook.png",
                        width: 20,
                        height: 20,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
