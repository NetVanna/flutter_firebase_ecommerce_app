import 'package:ecommerce_app/widgets/products/product_attribute.dart';
import 'package:ecommerce_app/widgets/products/product_image_slider.dart';
import 'package:ecommerce_app/widgets/products/product_meta_data.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../app_bar/custom_appbar.dart';
import '../rating_share/rating_sharing.dart';
import 'add_product_to_card.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        vertical: 0,
        showBackArrow: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.heart5,
              color: Colors.red,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AddProductToCard(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  RatingAndShare(),
                  ProductMetaData(),
                  SizedBox(
                    height: 15,
                  ),
                  ProductAttribute(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
