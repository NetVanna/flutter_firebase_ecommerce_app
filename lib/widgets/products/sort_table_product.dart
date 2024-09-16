import 'package:ecommerce_app/widgets/products/product_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../layout/grid_layout.dart';


class SortTableProducts extends StatelessWidget {
  const SortTableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
          child: DropdownButtonFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Iconsax.sort),
            ),
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ].map(
                  (option) => DropdownMenuItem(
                value: option,
                child: Text(option),
              ),
            ).toList(),
            onChanged: (value) {},
          ),
        ),
        const SizedBox(height: 20,),
        GridLayout(
          itemCount: 8,
          itemBuilder: (_, index) {
            return const ProductCardVertical();
          },
        ),
      ],
    );
  }
}