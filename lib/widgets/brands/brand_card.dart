import 'package:flutter/material.dart';

import '../container/rounded_container.dart';
import '../images/circle_image.dart';
import 'brand_title_vertical_icon.dart';

class BrandCardWidget extends StatelessWidget {
  const BrandCardWidget({
    super.key, required this.showBorder, this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: RoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: const Row(
          children: [
            Flexible(
              child: CircleImage(
                image:
                "assets/images/categories/cloth.png",
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  BrandTitleVerticalIcon(
                    title: 'Nike',
                  ),
                  Text(
                    "256 Products",
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
