import 'package:flutter/material.dart';

import '../container/rounded_container.dart';
import 'brand_card.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key, required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: Colors.grey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const BrandCardWidget(
            showBorder: false,
          ),
          Row(
              children:images.map((image) => brandTopProductImageWidget(image, context)).toList()
          ),
        ],
      ),
    );
  }
}
Widget brandTopProductImageWidget (String image,context){
  return const Expanded(
    child: RoundedContainer(
      height: 100,
      backgroundColor: Colors.grey,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(8),
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(
            "assets/images/product/beats_studio_3-1.png"),
      ),
    ),
  );
}