import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/category/sub_category.dart';
import '../../../widgets/text/vertical_image_text.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(const SubCategoryScreen());
      },
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return const VerticalImageText(
              images: "assets/images/categories/cloth.png",
              title: "Cloths Category",
              textColor: Colors.black,
            );
          },
          itemCount: 6,
        ),
      ),
    );
  }
}