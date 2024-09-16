import 'package:ecommerce_app/widgets/products/sort_table_product.dart';
import 'package:flutter/material.dart';

import '../app_bar/custom_appbar.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text("Popular Products"),
      ),
      body: SingleChildScrollView(
        child: SortTableProducts(),
      ),
    );
  }
}

