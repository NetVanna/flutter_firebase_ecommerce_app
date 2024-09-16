import 'package:flutter/material.dart';

import '../rating_share/rating_progress_indicator.dart';

class OverallProductReviews extends StatelessWidget {
  const OverallProductReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "4.8",
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingLinearProgressIndicator(
                text: '5',
                value: 1.0,
              ),
              RatingLinearProgressIndicator(
                text: '4',
                value: 0.8,
              ),
              RatingLinearProgressIndicator(
                text: '3',
                value: 0.6,
              ),
              RatingLinearProgressIndicator(
                text: '2',
                value: 0.4,
              ),
              RatingLinearProgressIndicator(
                text: '1',
                value: 0.2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
