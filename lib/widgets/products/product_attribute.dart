import 'package:ecommerce_app/widgets/products/product_review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import '../chips/choice_chip.dart';
import '../container/rounded_container.dart';
import '../text/section_heading.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedContainer(
          padding: const EdgeInsets.all(15),
          backgroundColor: Colors.grey.withOpacity(0.5),
          child: const Column(
            children: [
              Row(
                children: [
                  SectionHeading(
                    showActionButton: false,
                    title: "Variation",
                    buttonTitle: 'View All',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Price"),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "\$25",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.white,
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "\$20",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Stock"),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "in stock",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                  "This is the Description of the product and it can go up to 4 line"),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              title: "Colors",
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                CustomChoiceChip(
                  isSelected: true,
                  text: 'Green',
                  backgroundColor: Colors.green,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  isSelected: false,
                  text: 'Red',
                  backgroundColor: Colors.red,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  isSelected: false,
                  text: 'Blue',
                  backgroundColor: Colors.blue,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white),
            child: const Text("Check out"),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SectionHeading(
          title: "Description",
        ),
        const SizedBox(
          height: 15,
        ),
        const ReadMoreText(
          "Lorem Ipsum is simply dummy text of the printing and typesetting "
          "industry. Lorem Ipsum has been the industry's standard dummy "
          "text ever since the 1500s.",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: "More...",
          trimExpandedText: ' Less',
          moreStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          lessStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const Divider(),
        InkWell(
          onTap: () {
            Get.to(const ProductReviewScreen());
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SectionHeading(
                title: "Review(189)",
                onPressed: () {},
                showActionButton: false,
              ),
              IconButton(
                onPressed: () {
                  Get.to(const ProductReviewScreen());
                },
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
