
import 'package:ecommerce_app/features/home/widget/home_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../layout/grid_layout.dart';
import '../../widgets/app_bar/home_app_bar.dart';
import '../../widgets/container/search_container.dart';
import '../../widgets/products/all_products.dart';
import '../../widgets/products/product_vertical.dart';
import '../../widgets/slider/promo_slider.dart';
import '../../widgets/text/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(),
            const SearchContainer(
              text: "Search in Store",
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionHeading(
                    showActionButton: false,
                    title: "Popular Categories",
                    buttonTitle: "View All",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  HomeCategories(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: PromoSlider(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 15,right: 20),
              child: SectionHeading(
                title: "Popular Product",
                onPressed: () {
                  Get.to(const AllProducts());
                },
                showActionButton: true,
              ),
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
    );
  }
}