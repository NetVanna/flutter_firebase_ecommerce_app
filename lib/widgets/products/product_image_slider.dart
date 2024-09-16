import 'package:flutter/material.dart';

import '../curve_widget/curve_edge_widget.dart';
import '../images/rounded_image.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurveEdgeWidget(
      child: Container(
        color: Colors.transparent,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Image(
                      image: AssetImage(
                          "assets/images/product/beats_studio_3-1.png")),
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 0,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(
                    width: 16,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => RoundedImage(
                    imageUrl: "assets/images/product/beats_studio_3-1.png",
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                    border: Border.all(color: Colors.blue),
                    padding: const EdgeInsets.all(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
