import 'package:ecommerce_app/features/profile/profile/profile.dart';
import 'package:ecommerce_app/features/profile/setting_menu.dart';
import 'package:ecommerce_app/features/profile/user_profile_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../widgets/app_bar/custom_appbar.dart';
import '../../widgets/text/section_heading.dart';
import 'address/address.dart';
import 'order/order.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: false,
        title: Text("Account"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserProfileListTile(onTap: () => Get.to(const ProfileScreen())),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  /// Settings
                  const SectionHeading(
                    showActionButton: false,
                    title: "Account Setting",
                    buttonTitle: "View All",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SettingMenuTile(
                    title: 'My Address',
                    subTitle: 'Set Shopping Delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () {
                      Get.to(const UserAddressScreen());
                    },
                  ),
                  const SettingMenuTile(
                    title: 'My Cart',
                    subTitle: 'Add, remove products and remove checkout',
                    icon: Iconsax.shopping_cart,
                  ),
                  SettingMenuTile(
                    title: 'My Order',
                    subTitle: 'In-Progress order and complete orders',
                    icon: Iconsax.bag_tick,
                    onTap: () {
                      Get.to(const OrderScreen());
                    },
                  ),
                  const SettingMenuTile(
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                    icon: Iconsax.bank,
                  ),
                  const SettingMenuTile(
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    icon: Iconsax.discount_shape,
                  ),
                  const SettingMenuTile(
                    title: 'Notification',
                    subTitle: 'Set any kind of notification message',
                    icon: Iconsax.notification,
                  ),
                  const SettingMenuTile(
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    icon: Iconsax.security_card,
                  ),

                  /// App Settings
                  const SizedBox(
                    height: 15,
                  ),
                  const SectionHeading(
                    showActionButton: false,
                    title: "App Settings",
                    buttonTitle: "View All",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SettingMenuTile(
                    title: 'Load data',
                    subTitle: 'Upload data to your cloud firebase',
                    icon: Iconsax.document_upload,
                  ),
                  SettingMenuTile(
                    title: 'Geolocation',
                    subTitle: 'Set recommendation base on location',
                    icon: Iconsax.location,
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingMenuTile(
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe all pages',
                    icon: Iconsax.security_user,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingMenuTile(
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    icon: Iconsax.image,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
