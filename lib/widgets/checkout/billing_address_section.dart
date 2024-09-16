import 'package:flutter/material.dart';

import '../text/section_heading.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          showActionButton: true,
          onPressed: () {},
        ),
        const Text("Learning By Myself"),
        const SizedBox(height: 10,),
        const Row(
          children: [
            Icon(Icons.phone),
            SizedBox(width: 8,),
            Text("+855 45343434"),
          ],
        ),
        const SizedBox(height: 10,),
        const Row(
          children: [
            Icon(Icons.location_history),
            SizedBox(width: 8,),
            Text("South Liana, Maine 34534, USA"),
          ],
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
