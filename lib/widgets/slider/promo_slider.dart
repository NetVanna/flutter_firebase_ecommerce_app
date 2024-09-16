import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/home/controller/home_controller.dart';
import '../container/circular_container.dart';
import '../images/rounded_image.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: const [
            RoundedImage(
              imageUrl: "assets/images/banner/slider_2.png",
            ),
            RoundedImage(
              imageUrl: "assets/images/banner/slider_3.png",
            ),
            RoundedImage(
              imageUrl: "assets/images/banner/slider_1.png",
            ),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i <= 2; i++)
                CircularContainer(
                  width: controller.carouselCurrentIndex.value == i ? 50 : 20,
                  height: 5,
                  margin: const EdgeInsets.only(right: 5),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? Colors.green
                      : Colors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
