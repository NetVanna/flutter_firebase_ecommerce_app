import 'package:ecommerce_app/features/profile/order/widget/order_list_item.dart';

import 'package:flutter/material.dart';

import '../../../widgets/app_bar/custom_appbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text("My Orders"),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: OrderListItem(),
      ),
    );
  }
}
