import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleVerticalIcon extends StatelessWidget {
  const BrandTitleVerticalIcon({
    super.key,
    required this.title,
    this.maxLine = 1,
    this.textColor,
    this.iconColor = Colors.blue,
    this.textAlign,
    this.brandTextSize,
  });

  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;

  final double? brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        const SizedBox(
          width: 2,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: 15,
        )
      ],
    );
  }
}
