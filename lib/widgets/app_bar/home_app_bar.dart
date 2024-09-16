import 'package:ecommerce_app/widgets/icon/card_menu_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../card/card_screen.dart';
import 'custom_appbar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      horizontal: 5,
      showBackArrow: false,
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good day for shopping",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          Text("Welcome back, John"),
        ],
      ),
      actions: [
        CardMenuIcon(
          onPressed: () {
            Get.to(const CardScreen());
          },
          iconColor: Colors.black,
        ),
      ],
    );
  }
}
