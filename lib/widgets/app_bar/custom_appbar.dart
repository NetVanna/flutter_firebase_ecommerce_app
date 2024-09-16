import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
        this.title,
        required this.showBackArrow,
        this.leadingIcon,
        this.actions,
        this.leadingOnPress,
        this.horizontal = 0,
        this.vertical = 0});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPress;
  final double horizontal;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: title,
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w500, color: Colors.black, fontSize: 25),
        leading: showBackArrow
            ? IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPress, icon: Icon(leadingIcon))
            : null,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
