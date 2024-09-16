import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../brands/brand_title_vertical_icon.dart';
import '../container/rounded_container.dart';
import '../images/rounded_image.dart';
import '../text/product_price_text.dart';
import '../text/product_title_text.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white54,
      ),
      child: Row(
        children: [
          RoundedContainer(
            height: 120,
            backgroundColor: Colors.grey.withOpacity(0.1),
            padding: const EdgeInsets.all(12),
            child: Stack(
              children: [
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: RoundedImage(
                    imageUrl: "assets/images/product/beats_studio_3-1.png",
                    backgroundColor: Colors.transparent,
                    applyImageRadius: true,
                    fit: BoxFit.contain,
                    padding: EdgeInsets.all(10),
                  ),
                ),
                Positioned(
                  top: 12,
                  child: RoundedContainer(
                    radius: 8,
                    backgroundColor: Colors.yellowAccent.withOpacity(0.6),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: const Text("25%"),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.transparent),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.heart5,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12, top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: "Green Nike Air Shoes",
                        smallSize: true,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      BrandTitleVerticalIcon(
                        title: "Nike",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: ProductPriceText(
                          price: "256",
                          maxLine: 1,
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Iconsax.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
