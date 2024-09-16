import 'package:flutter/material.dart';

import '../app_bar/custom_appbar.dart';
import '../rating_share/rating_bar_indicator.dart';
import '../user_review/overall_product_reviews.dart';
import '../user_review/user_review_card.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text("Reviews & Rating"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
              SizedBox(height: 15),
              OverallProductReviews(),
              CustomRatingBarIndicator(
                rating: 4.5,
              ),
              Text(
                "12,3544",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              UserReviewCard(),
              SizedBox(
                height: 15,
              ),
              UserReviewCard(),
              SizedBox(
                height: 15,
              ),
              UserReviewCard(),
              SizedBox(
                height: 15,
              ),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
