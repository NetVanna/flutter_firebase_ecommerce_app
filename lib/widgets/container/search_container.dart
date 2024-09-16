import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icons = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.padding=const EdgeInsets.symmetric(horizontal: 16.0)
  });

  final String text;
  final IconData? icons;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: showBackground ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            border: showBorder ? Border.all(color: Colors.grey) : null),
        child: Row(
          children: [
            Icon(icons),
            const SizedBox(
              width: 15,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}