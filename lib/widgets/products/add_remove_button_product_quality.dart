import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../icon/circular_icon.dart';



class ProductQualityWithAddRemoveButton extends StatelessWidget {
  const ProductQualityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          color: Colors.white,
          backgroundColor: Colors.grey,
          width: 32,
          height: 32,
          size: 16,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "2",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        CircularIcon(
          icon: Iconsax.add,
          color: Colors.white,
          backgroundColor: Colors.blue,
          width: 32,
          height: 32,
          size: 16,

        ),
      ],
    );
  }
}