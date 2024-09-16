import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_bar/custom_appbar.dart';
import '../checkout/check_out_screen.dart';
import 'list_view_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Card"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: ListViewCard(
            itemCount: 10,
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ElevatedButton(
          onPressed: () {
            Get.to(const CheckOutScreen());
          },
          style: ElevatedButton.styleFrom(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 13)),
          child: const Text(
            "Check Out \$256",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
