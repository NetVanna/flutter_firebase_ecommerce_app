import 'package:ecommerce_app/widgets/products/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../brands/brand_title_vertical_icon.dart';
import '../container/rounded_container.dart';
import '../images/rounded_image.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(const ProductDetail());
      },
      child: Container(
        margin: const EdgeInsets.only(left: 16,right: 16),
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.withOpacity(0.4),
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              backgroundColor: Colors.transparent,
              child: Stack(
                children: [
                  const RoundedImage(
                    imageUrl: "assets/images/product/beats_studio_3-1.png",
                    backgroundColor: Colors.transparent,
                    applyImageRadius: true,
                    padding: EdgeInsets.all(20),
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
            Container(
              color: Colors.white.withOpacity(0.6),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Column(
                  children: [
                    const Text(
                      "Green Nike Air Shoes",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const BrandTitleVerticalIcon(title: 'Nike',),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "\$35.5",
                          style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


