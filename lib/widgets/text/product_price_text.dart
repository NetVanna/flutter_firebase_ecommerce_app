import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText(
      {super.key,
      this.currentSign = "\$",
      required this.price,
      required this.maxLine,
      this.isLarge = false,
      this.isLineThrough = false});

  final String currentSign, price;
  final int maxLine;
  final bool isLarge;
  final bool isLineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currentSign + price,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
    );
  }
}
