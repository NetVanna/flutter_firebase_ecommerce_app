import 'package:flutter/material.dart';

import '../../layout/grid_layout.dart';
import '../brands/brand_show_case.dart';
import '../products/product_vertical.dart';
import '../text/section_heading.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              ///Brand
              const BrandShowCase(
                images: [
                  "assets/images/product/beats_studio_3-1.png",
                  "assets/images/product/beats_studio_3-1.png",
                  "assets/images/product/beats_studio_3-1.png"
                ],
              ),

              ///Products
              const SectionHeading(
                showActionButton: true,
                title: "You might like",
                buttonTitle: "View all",
              ),
              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return const ProductCardVertical();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
