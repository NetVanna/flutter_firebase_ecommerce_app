import 'package:flutter/material.dart';

import '../../layout/grid_layout.dart';
import '../../widgets/app_bar/custom_appbar.dart';
import '../../widgets/products/product_vertical.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: false,
        title: const Text("WistList"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return const ProductCardVertical();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
