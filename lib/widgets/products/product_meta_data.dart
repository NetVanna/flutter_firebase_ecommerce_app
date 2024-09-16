import 'package:flutter/material.dart';

import '../brands/brand_title_vertical_icon.dart';
import '../container/rounded_container.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: 8,
              backgroundColor: Colors.yellowAccent.withOpacity(0.6),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: const Text("25%"),
            ),
            const SizedBox(
              width: 16,
            ),
            const Text(
              "\$250",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: 16,
            ),
            const Text(
              "\$150",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "beats_studio",
          style: TextStyle(fontSize: 22),
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          children: [
            Text("Status"),
            SizedBox(
              width: 15,
            ),
            Text(
              "In Stock",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          children: [
            Icon(Icons.production_quantity_limits),
            SizedBox(
              width: 10,
            ),
            BrandTitleVerticalIcon(
              title: "Beat Studio",
            ),
          ],
        ),
      ],
    );
  }
}
