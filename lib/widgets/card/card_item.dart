import 'package:flutter/material.dart';

import '../brands/brand_title_vertical_icon.dart';
import '../images/rounded_image.dart';
import '../text/product_title_text.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
          imageUrl: "assets/images/product/beats_studio_3-1.png",
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(8),
          backgroundColor: Colors.grey.withOpacity(0.5),
          fit: BoxFit.contain,
        ),
        const SizedBox(
          width: 15,
        ),
        const Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BrandTitleVerticalIcon(
                title: "Beat Studio",
              ),
              Flexible(
                child: ProductTitleText(
                  title: 'Beat Studio black',
                  maxLine: 1,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Color "),
                    TextSpan(
                      text: "Green",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

