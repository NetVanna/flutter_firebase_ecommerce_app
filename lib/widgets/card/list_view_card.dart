import 'package:flutter/material.dart';

import '../products/add_remove_button_product_quality.dart';
import '../text/product_price_text.dart';
import 'card_item.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({
    super.key,
    this.showRemoveAddButton = true, required this.itemCount,
  });

  final bool showRemoveAddButton;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: 30,
      ),
      itemCount: itemCount,
      itemBuilder: (_, index) {
        return Column(
          children: [
            const CardItem(),
            if (showRemoveAddButton) const SizedBox(height: 6),
            if (showRemoveAddButton)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      ProductQualityWithAddRemoveButton(),
                    ],
                  ),
                  ProductPriceText(
                    price: '245',
                    maxLine: 1,
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}
