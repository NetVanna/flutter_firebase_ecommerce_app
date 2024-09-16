import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../navigation_menu.dart';
import '../app_bar/custom_appbar.dart';
import '../card/list_view_card.dart';
import '../container/rounded_container.dart';
import '../coupon/coupon_code.dart';
import '../success_screen/success_screen.dart';
import 'billing_address_section.dart';
import 'billing_amount_section.dart';
import 'billing_payment_section.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Card"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              ListViewCard(
                showRemoveAddButton: false,
                itemCount: 2,
              ),
              SizedBox(height: 15),
              CouponCode(),
              SizedBox(height: 15),
              RoundedContainer(
                padding: EdgeInsets.all(16),
                showBorder: true,
                backgroundColor: Colors.white,
                child: Column(
                  children: [
                    BillingAmountSection(),
                    SizedBox(height: 15),
                    Divider(),
                    SizedBox(height: 15),
                    BillingPaymentSection(),
                    SizedBox(
                      height: 15,
                    ),
                    BillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              SuccessScreen(
                title: 'Payment Success',
                image: 'assets/logos/check.png',
                subtitle: 'Your item will be ship now',
                onPressed: () {
                  Get.offAll(const NavigationMenu());
                },
              ),
            );
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
