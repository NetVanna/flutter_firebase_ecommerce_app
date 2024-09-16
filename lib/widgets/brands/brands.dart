import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../layout/grid_layout.dart';
import '../app_bar/custom_appbar.dart';
import '../text/section_heading.dart';
import 'brand_card.dart';
import 'brand_product.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Brand"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SectionHeading(
                title: "Brands",
                showActionButton: false,
              ),
              const SizedBox(
                height: 15,
              ),
              GridLayout(
                itemCount: 16,
                mainAxisExtent: 60,
                itemBuilder: (_, index) {
                  return BrandCardWidget(
                    showBorder: true,
                    onTap: () {
                      Get.to(const BrandProduct());
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
