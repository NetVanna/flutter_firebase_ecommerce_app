import 'package:flutter/material.dart';

import '../app_bar/custom_appbar.dart';
import '../images/rounded_image.dart';
import '../products/product_card_horizontal.dart';
import '../text/section_heading.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Sport"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const RoundedImage(
                imageUrl: "assets/images/banner/slider_2.png",
                width: double.infinity,
                applyImageRadius: true,
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                children: [
                  SectionHeading(
                    title: "Sport Shirts",
                    showActionButton: true,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 5,
                      ),
                      itemBuilder: (context, index) {
                        return const ProductCardHorizontal();
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                children: [
                  SectionHeading(
                    title: "Sport Shirts",
                    showActionButton: true,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 5,
                      ),
                      itemBuilder: (context, index) {
                        return const ProductCardHorizontal();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
