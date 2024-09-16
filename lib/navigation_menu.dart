import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/home/home_screen.dart';
import 'features/profile/setting.dart';
import 'features/shop/store.dart';
import 'features/wish_list/wish_list.dart';



class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
            ()=> NavigationBar(
          height: 80,
          selectedIndex: controller.selectedIndex.value,
          elevation: 0,
          onDestinationSelected: (index)=>controller.selectedIndex.value=index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;

  final screens=[
    const HomeScreen(),
    const Store(),
    const FavouriteScreen(),
    const SettingScreen(),
  ];
}