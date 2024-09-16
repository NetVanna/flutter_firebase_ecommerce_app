import 'package:ecommerce_app/features/profile/address/widget/single_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/app_bar/custom_appbar.dart';
import 'add_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddNewAddressScreen());
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: const CustomAppBar(
        title: Text("Address"),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SingleAddress(
                selectedAddress: false,
              ),
              SingleAddress(
                selectedAddress: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
