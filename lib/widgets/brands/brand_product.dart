import 'package:flutter/material.dart';

import '../app_bar/custom_appbar.dart';
import '../products/sort_table_product.dart';
import 'brand_card.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text("Nike"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15, top: 15),
              child: BrandCardWidget(showBorder: true),
            ),
            SortTableProducts(),
          ],
        ),
      ),
    );
  }
}
