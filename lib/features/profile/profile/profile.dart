import 'package:ecommerce_app/features/profile/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';

import '../../../widgets/app_bar/custom_appbar.dart';
import '../../../widgets/images/circle_image.dart';
import '../../../widgets/text/section_heading.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircleImage(
                      image: "assets/images/product/profile_pic.png",
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Picture"))
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(),
              const SizedBox(
                height: 12,
              ),
              const SectionHeading(
                showActionButton: false,
                title: 'Profile Information',
                buttonTitle: 'View All',
              ),
              const SizedBox(
                height: 20,
              ),
              const ProfileMenuWidget(
                title: 'Name',
                value: 'Learning Me',
              ),
              const SizedBox(height: 15),
              const ProfileMenuWidget(
                title: 'Username',
                value: 'Learning Me',
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(),
              const SizedBox(
                height: 12,
              ),
              const SectionHeading(
                showActionButton: false,
                title: 'Personal Information',
                buttonTitle: 'View All',
              ),
              const SizedBox(
                height: 20,
              ),
              ProfileMenuWidget(
                title: 'User ID',
                value: '345634',
                onTap: () {},
              ),
              const SizedBox(height: 15),
              ProfileMenuWidget(
                title: 'E-Mail',
                value: 'support@myself.com',
                onTap: () {},
              ),
              const SizedBox(height: 15),
              ProfileMenuWidget(
                title: 'Phone Number',
                value: '+885 54 345 644',
                onTap: () {},
              ),
              const SizedBox(height: 15),
              ProfileMenuWidget(
                title: 'Gender',
                value: 'Male',
                onTap: () {},
              ),
              const SizedBox(height: 15),
              ProfileMenuWidget(
                title: 'Date_of_Birth',
                value: '05-Sep-1999',
                onTap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                  child: const Text(
                    "Close Account",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
