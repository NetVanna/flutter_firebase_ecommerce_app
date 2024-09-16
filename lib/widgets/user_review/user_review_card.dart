import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../container/rounded_container.dart';
import '../rating_share/rating_bar_indicator.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/product/profile_pic.png"),
                ),
                SizedBox(width: 10),
                Text(
                  "John Doe",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: 5),
        const Row(
          children: [
            CustomRatingBarIndicator(rating: 3.5),
            SizedBox(width: 15),
            Text("09-Jul-2024")
          ],
        ),
        const SizedBox(height: 5),
        const ReadMoreText(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry,text of the printing. ",
          trimLines: 1,
          lessStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          moreStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          trimMode: TrimMode.Line,
          trimExpandedText: " Show Less",
          trimCollapsedText: "Show More",
        ),
        const SizedBox(height: 10),
        RoundedContainer(
          backgroundColor: Colors.grey.withOpacity(0.2),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Learning",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "09-Jul-2024",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ReadMoreText(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry,text of the printing.Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                  trimLines: 2,
                  lessStyle: TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.w700),
                  moreStyle: TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.w700),
                  trimMode: TrimMode.Line,
                  trimExpandedText: " Show Less",
                  trimCollapsedText: "Show More",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
